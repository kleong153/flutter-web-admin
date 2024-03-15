import 'package:flutter/material.dart';

class SingleLineText extends Text {
  const SingleLineText(
      super.data, {
        super.key,
        super.style,
        super.strutStyle,
        super.textAlign,
        super.textDirection,
        super.locale,
        super.textScaleFactor,
        super.semanticsLabel,
        super.textWidthBasis,
        super.textHeightBehavior,
      }) : super(
    softWrap: false,
    overflow: TextOverflow.fade,
    maxLines: 1,
  );
}
