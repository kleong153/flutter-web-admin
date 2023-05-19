import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:web_admin/app_router.dart';
import 'package:web_admin/constants/dimens.dart';
import 'package:web_admin/generated/l10n.dart';
import 'package:web_admin/master_layout_config.dart';
import 'package:web_admin/providers/app_preferences_provider.dart';
import 'package:web_admin/theme/theme_extensions/app_color_scheme.dart';
import 'package:web_admin/theme/theme_extensions/app_sidebar_theme.dart';
import 'package:web_admin/views/widgets/portal_master_layout/sidebar.dart';

class LocaleMenuConfig {
  final String languageCode;
  final String? scriptCode;
  final String name;

  const LocaleMenuConfig({
    required this.languageCode,
    this.scriptCode,
    required this.name,
  });
}

class PortalMasterLayout extends StatelessWidget {
  final Widget body;
  final bool autoSelectMenu;
  final String? selectedMenuUri;
  final void Function(bool isOpened)? onDrawerChanged;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;
  final List<Widget>? persistentFooterButtons;

  const PortalMasterLayout({
    Key? key,
    required this.body,
    this.autoSelectMenu = true,
    this.selectedMenuUri,
    this.onDrawerChanged,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final themeData = Theme.of(context);
    final drawer = (mediaQueryData.size.width <= kScreenWidthLg ? _sidebar(context) : null);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: (drawer != null),
        title: ResponsiveAppBarTitle(
          onAppBarTitlePressed: () => GoRouter.of(context).go(RouteUri.home),
        ),
        actions: [
          _toggleThemeButton(context),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: VerticalDivider(
              width: 1.0,
              thickness: 1.0,
              color: themeData.appBarTheme.foregroundColor!.withOpacity(0.5),
              indent: 14.0,
              endIndent: 14.0,
            ),
          ),
          _changeLanguageButton(context),
          const SizedBox(width: kDefaultPadding * 0.5),
        ],
      ),
      drawer: drawer,
      drawerEnableOpenDragGesture: false,
      onDrawerChanged: onDrawerChanged,
      body: _responsiveBody(context),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      floatingActionButtonAnimator: floatingActionButtonAnimator,
      persistentFooterButtons: persistentFooterButtons,
    );
  }

  Widget _responsiveBody(BuildContext context) {
    if (MediaQuery.of(context).size.width <= kScreenWidthLg) {
      return body;
    } else {
      return Row(
        children: [
          SizedBox(
            width: Theme.of(context).extension<AppSidebarTheme>()!.sidebarWidth,
            child: _sidebar(context),
          ),
          Expanded(child: body),
        ],
      );
    }
  }

  Widget _sidebar(BuildContext context) {
    final goRouter = GoRouter.of(context);

    return Sidebar(
      autoSelectMenu: autoSelectMenu,
      selectedMenuUri: selectedMenuUri,
      onAccountButtonPressed: () => goRouter.go(RouteUri.myProfile),
      onLogoutButtonPressed: () => goRouter.go(RouteUri.logout),
      sidebarConfigs: sidebarMenuConfigs,
    );
  }

  Widget _toggleThemeButton(BuildContext context) {
    final lang = Lang.of(context);
    final themeData = Theme.of(context);
    final isFullWidthButton = (MediaQuery.of(context).size.width > kScreenWidthMd);

    return SizedBox(
      width: (isFullWidthButton ? null : 48.0),
      child: TextButton(
        onPressed: () async {
          final provider = context.read<AppPreferencesProvider>();
          final currentThemeMode = provider.themeMode;
          final themeMode = (currentThemeMode != ThemeMode.dark ? ThemeMode.dark : ThemeMode.light);

          provider.setThemeModeAsync(themeMode: themeMode);
        },
        style: TextButton.styleFrom(
          foregroundColor: themeData.colorScheme.onPrimary,
          disabledForegroundColor: themeData.extension<AppColorScheme>()!.primary.withOpacity(0.38),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        child: Selector<AppPreferencesProvider, ThemeMode>(
          selector: (context, provider) => provider.themeMode,
          builder: (context, value, child) {
            var icon = Icons.dark_mode_rounded;
            var text = lang.darkTheme;

            if (value == ThemeMode.dark) {
              icon = Icons.light_mode_rounded;
              text = lang.lightTheme;
            }

            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: (themeData.textTheme.labelLarge!.fontSize! + 4.0),
                ),
                Visibility(
                  visible: isFullWidthButton,
                  child: Padding(
                    padding: const EdgeInsets.only(left: kDefaultPadding * 0.5),
                    child: Text(text),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _changeLanguageButton(BuildContext context) {
    return PopupMenuButton(
      splashRadius: 0.0,
      tooltip: '',
      position: PopupMenuPosition.under,
      itemBuilder: (context) {
        return localeMenuConfigs.map<PopupMenuItem>((e) {
          return PopupMenuItem(
            onTap: () async {
              final provider = context.read<AppPreferencesProvider>();

              await provider.setLocaleAsync(locale: Locale.fromSubtags(languageCode: e.languageCode, scriptCode: e.scriptCode));
            },
            child: Text(e.name),
          );
        }).toList(growable: false);
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.5),
        constraints: const BoxConstraints(minWidth: 48.0),
        child: Row(
          children: [
            Icon(
              Icons.translate_rounded,
              size: (Theme.of(context).textTheme.labelLarge!.fontSize! + 4.0),
            ),
            Visibility(
              visible: (MediaQuery.of(context).size.width > kScreenWidthMd),
              child: Padding(
                padding: const EdgeInsets.only(left: kDefaultPadding * 0.5),
                child: Text(Lang.of(context).language),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResponsiveAppBarTitle extends StatelessWidget {
  final void Function() onAppBarTitlePressed;

  const ResponsiveAppBarTitle({
    Key? key,
    required this.onAppBarTitlePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = Lang.of(context);
    final mediaQueryData = MediaQuery.of(context);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onAppBarTitlePressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
              visible: (mediaQueryData.size.width > kScreenWidthSm),
              child: Container(
                padding: const EdgeInsets.only(right: kDefaultPadding * 0.7),
                height: 40.0,
                child: Image.asset(
                  'assets/images/app_logo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Text(lang.appTitle),
          ],
        ),
      ),
    );
  }
}
