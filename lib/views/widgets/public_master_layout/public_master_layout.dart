import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_admin/constants/dimens.dart';
import 'package:web_admin/generated/l10n.dart';
import 'package:web_admin/master_layout_config.dart';
import 'package:web_admin/providers/app_preferences_provider.dart';
import 'package:web_admin/theme/theme_extensions/app_color_scheme.dart';

class PublicMasterLayout extends StatelessWidget {
  final Widget body;

  const PublicMasterLayout({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: kToolbarHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _toggleThemeButton(context),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: VerticalDivider(
                    width: 1.0,
                    thickness: 1.0,
                    color: themeData.colorScheme.onSurface.withOpacity(0.3),
                    indent: 14.0,
                    endIndent: 14.0,
                  ),
                ),
                _changeLanguageButton(context),
                const SizedBox(width: kDefaultPadding * 0.5),
              ],
            ),
          ),
          Expanded(
            child: body,
          ),
        ],
      ),
    );
  }

  Widget _toggleThemeButton(BuildContext context) {
    final lang = Lang.of(context);
    final themeData = Theme.of(context);
    final isFullWidthButton = (MediaQuery.of(context).size.width > kScreenWidthMd);

    return SizedBox(
      height: kToolbarHeight,
      width: (isFullWidthButton ? null : 48.0),
      child: TextButton(
        onPressed: () async {
          final provider = context.read<AppPreferencesProvider>();
          final currentThemeMode = provider.themeMode;
          final themeMode = (currentThemeMode != ThemeMode.dark ? ThemeMode.dark : ThemeMode.light);

          provider.setThemeModeAsync(themeMode: themeMode);
        },
        style: TextButton.styleFrom(
          foregroundColor: themeData.colorScheme.onSurface,
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
