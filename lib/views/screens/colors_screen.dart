import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_admin/constants/dimens.dart';
import 'package:web_admin/generated/l10n.dart';
import 'package:web_admin/theme/theme_extensions/app_color_scheme.dart';
import 'package:web_admin/views/widgets/card_elements.dart';
import 'package:web_admin/views/widgets/hover_container.dart';
import 'package:web_admin/views/widgets/portal_master_layout/portal_master_layout.dart';
import 'package:web_admin/views/widgets/text_with_copy_button.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = Lang.of(context);
    final themeData = Theme.of(context);
    final appColorScheme = Theme.of(context).extension<AppColorScheme>()!;

    return PortalMasterLayout(
      body: ListView(
        padding: const EdgeInsets.all(kDefaultPadding),
        children: [
          Text(
            lang.colors(2),
            style: themeData.textTheme.headlineMedium,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardHeader(
                    title: lang.colorPalette,
                  ),
                  CardBody(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: kTextPadding),
                          child: Text(
                            lang.colorScheme,
                            style: themeData.textTheme.titleMedium,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: kDefaultPadding),
                          child: TextWithCopyButton(
                            textWidget: Text(
                              'Theme.of(context).colorScheme',
                              style: GoogleFonts.sourceCodePro(
                                fontSize: 12.0,
                              ),
                            ),
                            textToCopy: 'Theme.of(context).colorScheme',
                            copyIconSize: 13.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: kDefaultPadding * 3.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: kDefaultPadding * 2.0,
                              runSpacing: kDefaultPadding,
                              children: [
                                _colorPaletteItem(context, 'primary', themeData.colorScheme.primary),
                                _colorPaletteItem(context, 'onPrimary', themeData.colorScheme.onPrimary),
                                _colorPaletteItem(context, 'primaryContainer', themeData.colorScheme.primaryContainer),
                                _colorPaletteItem(context, 'onPrimaryContainer', themeData.colorScheme.onPrimaryContainer),
                                _colorPaletteItem(context, 'secondary', themeData.colorScheme.secondary),
                                _colorPaletteItem(context, 'onSecondary', themeData.colorScheme.onSecondary),
                                _colorPaletteItem(context, 'secondaryContainer', themeData.colorScheme.secondaryContainer),
                                _colorPaletteItem(context, 'onSecondaryContainer', themeData.colorScheme.onSecondaryContainer),
                                _colorPaletteItem(context, 'tertiary', themeData.colorScheme.tertiary),
                                _colorPaletteItem(context, 'onTertiary', themeData.colorScheme.onTertiary),
                                _colorPaletteItem(context, 'tertiaryContainer', themeData.colorScheme.tertiaryContainer),
                                _colorPaletteItem(context, 'onTertiaryContainer', themeData.colorScheme.onTertiaryContainer),
                                _colorPaletteItem(context, 'error', themeData.colorScheme.error),
                                _colorPaletteItem(context, 'onError', themeData.colorScheme.onError),
                                _colorPaletteItem(context, 'errorContainer', themeData.colorScheme.errorContainer),
                                _colorPaletteItem(context, 'onErrorContainer', themeData.colorScheme.onErrorContainer),
                                _colorPaletteItem(context, 'background', themeData.colorScheme.background),
                                _colorPaletteItem(context, 'onBackground', themeData.colorScheme.onBackground),
                                _colorPaletteItem(context, 'surface', themeData.colorScheme.surface),
                                _colorPaletteItem(context, 'onSurface', themeData.colorScheme.onSurface),
                                _colorPaletteItem(context, 'surfaceVariant', themeData.colorScheme.surfaceVariant),
                                _colorPaletteItem(context, 'outline', themeData.colorScheme.outline),
                                _colorPaletteItem(context, 'shadow', themeData.colorScheme.shadow),
                                _colorPaletteItem(context, 'inverseSurface', themeData.colorScheme.inverseSurface),
                                _colorPaletteItem(context, 'inversePrimary', themeData.colorScheme.inversePrimary),
                                _colorPaletteItem(context, 'surfaceTint', themeData.colorScheme.surfaceTint),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: kTextPadding),
                          child: Text(
                            'App Color Scheme ${lang.extensions(1)}',
                            style: themeData.textTheme.titleMedium,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: kDefaultPadding),
                          child: TextWithCopyButton(
                            textWidget: Text(
                              'Theme.of(context).extension<AppColorScheme>()',
                              style: GoogleFonts.sourceCodePro(
                                fontSize: 12.0,
                              ),
                            ),
                            textToCopy: 'Theme.of(context).extension<AppColorScheme>()',
                            copyIconSize: 13.0,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Wrap(
                            direction: Axis.horizontal,
                            spacing: kDefaultPadding * 2.0,
                            runSpacing: kDefaultPadding,
                            children: [
                              _colorPaletteItem(context, 'primary', appColorScheme.primary),
                              _colorPaletteItem(context, 'secondary', appColorScheme.secondary),
                              _colorPaletteItem(context, 'error', appColorScheme.error),
                              _colorPaletteItem(context, 'success', appColorScheme.success),
                              _colorPaletteItem(context, 'info', appColorScheme.info),
                              _colorPaletteItem(context, 'warning', appColorScheme.warning),
                              _colorPaletteItem(context, 'hyperlink', appColorScheme.hyperlink),
                              _colorPaletteItem(context, 'buttonTextBlack', appColorScheme.buttonTextBlack),
                              _colorPaletteItem(context, 'buttonTextDisabled', appColorScheme.buttonTextDisabled),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _colorPaletteItem(BuildContext context, String title, Color color) {
    final themeData = Theme.of(context);
    final colorCode = '0x${color.value.toRadixString(16).toUpperCase()}';

    return HoverContainer(
      hoverColor: themeData.scaffoldBackgroundColor,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(right: kDefaultPadding * 0.5),
            decoration: BoxDecoration(
              color: color,
              border: Border.all(
                width: 1.0,
                color: themeData.dividerColor,
              ),
            ),
          ),
          SizedBox(
            width: 200.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: kTextPadding),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextWithCopyButton(
                        textWidget: Text(
                          title,
                          style: GoogleFonts.sourceCodePro(
                            fontWeight: FontWeight.w600,
                            fontSize: 13.0,
                          ),
                        ),
                        textToCopy: title,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextWithCopyButton(
                      textWidget: Text(
                        colorCode,
                        style: GoogleFonts.sourceCodePro(
                          fontSize: 12.0,
                        ),
                      ),
                      textToCopy: colorCode,
                      copyIconSize: 13.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
