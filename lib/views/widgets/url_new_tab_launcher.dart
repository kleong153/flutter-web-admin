// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:web_admin/constants/dimens.dart';
import 'package:web_admin/generated/l10n.dart';
import 'package:web_admin/theme/theme_extensions/app_color_scheme.dart';

class UrlNewTabLauncher extends StatelessWidget {
  final String displayText;
  final String url;
  final Color? fontColor;
  final double fontSize;
  final double displayTextRightPadding;

  const UrlNewTabLauncher({
    Key? key,
    required this.displayText,
    required this.url,
    this.fontColor,
    this.fontSize = 14.0,
    this.displayTextRightPadding = kTextPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = Lang.of(context);
    final themeData = Theme.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => html.window.open(url, "_blank"),
            child: Tooltip(
              message: lang.openInNewTab,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: displayTextRightPadding),
                    child: Text(
                      displayText,
                      style: TextStyle(
                        color: (fontColor ?? themeData.extension<AppColorScheme>()!.hyperlink),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.exit_to_app_rounded,
                    size: (fontSize + 2.0),
                    color: (fontColor ?? themeData.extension<AppColorScheme>()!.hyperlink),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
