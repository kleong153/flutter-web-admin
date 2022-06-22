import 'package:flutter/material.dart';

class SingleLineText extends Text {
  const SingleLineText(
      String data, {
        Key? key,
        TextStyle? style,
        StrutStyle? strutStyle,
        TextAlign? textAlign,
        TextDirection? textDirection,
        Locale? locale,
        double? textScaleFactor,
        String? semanticsLabel,
        TextWidthBasis? textWidthBasis,
        TextHeightBehavior? textHeightBehavior,
      }) : super(
    data,
    key: key,
    style: style,
    strutStyle: strutStyle,
    textAlign: textAlign,
    textDirection: textDirection,
    locale: locale,
    softWrap: false,
    overflow: TextOverflow.fade,
    textScaleFactor: textScaleFactor,
    maxLines: 1,
    semanticsLabel: semanticsLabel,
    textWidthBasis: textWidthBasis,
    textHeightBehavior: textHeightBehavior,
  );
}
