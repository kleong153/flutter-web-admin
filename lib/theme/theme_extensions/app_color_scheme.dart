import 'package:flutter/material.dart';

class AppColorScheme extends ThemeExtension<AppColorScheme> {
  final Color primary;
  final Color secondary;
  final Color error;
  final Color success;
  final Color info;
  final Color warning;
  final Color hyperlink;
  final Color buttonTextBlack;
  final Color buttonTextDisabled;

  const AppColorScheme({
    required this.primary,
    required this.secondary,
    required this.error,
    required this.success,
    required this.info,
    required this.warning,
    required this.hyperlink,
    required this.buttonTextBlack,
    required this.buttonTextDisabled,
  });

  @override
  ThemeExtension<AppColorScheme> copyWith({
    Color? primary,
    Color? secondary,
    Color? error,
    Color? success,
    Color? info,
    Color? warning,
    Color? hyperlink,
    Color? buttonTextBlack,
    Color? buttonTextDisabled,
  }) {
    return AppColorScheme(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      error: error ?? this.error,
      success: success ?? this.success,
      info: info ?? this.info,
      warning: warning ?? this.warning,
      hyperlink: hyperlink ?? this.hyperlink,
      buttonTextBlack: buttonTextBlack ?? this.buttonTextBlack,
      buttonTextDisabled: buttonTextDisabled ?? this.buttonTextDisabled,
    );
  }

  @override
  ThemeExtension<AppColorScheme> lerp(ThemeExtension<AppColorScheme>? other, double t) {
    if (other is! AppColorScheme) {
      return this;
    }

    return AppColorScheme(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      error: Color.lerp(error, other.error, t)!,
      success: Color.lerp(success, other.success, t)!,
      info: Color.lerp(info, other.info, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      hyperlink: Color.lerp(hyperlink, other.hyperlink, t)!,
      buttonTextBlack: Color.lerp(buttonTextBlack, other.buttonTextBlack, t)!,
      buttonTextDisabled: Color.lerp(buttonTextDisabled, other.buttonTextDisabled, t)!,
    );
  }
}
