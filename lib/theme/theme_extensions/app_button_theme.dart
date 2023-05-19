import 'package:flutter/material.dart';
import 'package:web_admin/theme/theme_extensions/app_color_scheme.dart';

class AppButtonTheme extends ThemeExtension<AppButtonTheme> {
  final ButtonStyle primaryElevated;
  final ButtonStyle secondaryElevated;
  final ButtonStyle errorElevated;
  final ButtonStyle successElevated;
  final ButtonStyle infoElevated;
  final ButtonStyle warningElevated;
  final ButtonStyle primaryOutlined;
  final ButtonStyle secondaryOutlined;
  final ButtonStyle errorOutlined;
  final ButtonStyle successOutlined;
  final ButtonStyle infoOutlined;
  final ButtonStyle warningOutlined;

  final ButtonStyle primaryText;
  final ButtonStyle secondaryText;
  final ButtonStyle errorText;
  final ButtonStyle successText;
  final ButtonStyle infoText;
  final ButtonStyle warningText;

  const AppButtonTheme({
    required this.primaryElevated,
    required this.secondaryElevated,
    required this.errorElevated,
    required this.successElevated,
    required this.infoElevated,
    required this.warningElevated,
    required this.primaryOutlined,
    required this.secondaryOutlined,
    required this.errorOutlined,
    required this.successOutlined,
    required this.infoOutlined,
    required this.warningOutlined,
    required this.primaryText,
    required this.secondaryText,
    required this.errorText,
    required this.successText,
    required this.infoText,
    required this.warningText,
  });

  factory AppButtonTheme.fromAppColorScheme(AppColorScheme appColorScheme) {
    return AppButtonTheme(
      primaryElevated: ElevatedButton.styleFrom(
        backgroundColor: appColorScheme.primary,
        disabledForegroundColor: appColorScheme.primary.withOpacity(0.38),
        disabledBackgroundColor: appColorScheme.primary.withOpacity(0.12),
      ).withCommonButtonStyle(
        appColorScheme: appColorScheme,
      ),
      secondaryElevated: ElevatedButton.styleFrom(
        backgroundColor: appColorScheme.secondary,
        disabledForegroundColor: appColorScheme.secondary,
      ).withCommonButtonStyle(
        appColorScheme: appColorScheme,
      ),
      errorElevated: ElevatedButton.styleFrom(
        backgroundColor: appColorScheme.error,
        disabledForegroundColor: appColorScheme.error,
      ).withCommonButtonStyle(
        appColorScheme: appColorScheme,
      ),
      successElevated: ElevatedButton.styleFrom(
        backgroundColor: appColorScheme.success,
        disabledForegroundColor: appColorScheme.success,
      ).withCommonButtonStyle(
        appColorScheme: appColorScheme,
      ),
      infoElevated: ElevatedButton.styleFrom(
        backgroundColor: appColorScheme.info,
        disabledForegroundColor: appColorScheme.info,
      ).withCommonButtonStyle(
        appColorScheme: appColorScheme,
      ),
      warningElevated: ElevatedButton.styleFrom(
        backgroundColor: appColorScheme.warning,
        disabledForegroundColor: appColorScheme.warning,
      ).withCommonButtonStyle(
        appColorScheme: appColorScheme,
        normalButtonTextColor: appColorScheme.buttonTextBlack,
      ),
      primaryOutlined: OutlinedButton.styleFrom(
        foregroundColor: appColorScheme.primary,
        disabledForegroundColor: appColorScheme.primary,
      ).withCommonOutlinedButtonStyle(
        appColorScheme: appColorScheme,
        normalButtonTextColor: appColorScheme.primary,
      ),
      secondaryOutlined: OutlinedButton.styleFrom(
        foregroundColor: appColorScheme.secondary,
        disabledForegroundColor: appColorScheme.secondary,
      ).withCommonOutlinedButtonStyle(
        appColorScheme: appColorScheme,
        normalButtonTextColor: appColorScheme.secondary,
      ),
      errorOutlined: OutlinedButton.styleFrom(
        foregroundColor: appColorScheme.error,
        disabledForegroundColor: appColorScheme.error,
      ).withCommonOutlinedButtonStyle(
        appColorScheme: appColorScheme,
        normalButtonTextColor: appColorScheme.error,
      ),
      successOutlined: OutlinedButton.styleFrom(
        foregroundColor: appColorScheme.success,
        disabledForegroundColor: appColorScheme.success,
      ).withCommonOutlinedButtonStyle(
        appColorScheme: appColorScheme,
        normalButtonTextColor: appColorScheme.success,
      ),
      infoOutlined: OutlinedButton.styleFrom(
        foregroundColor: appColorScheme.info,
        disabledForegroundColor: appColorScheme.info,
      ).withCommonOutlinedButtonStyle(
        appColorScheme: appColorScheme,
        normalButtonTextColor: appColorScheme.info,
      ),
      warningOutlined: OutlinedButton.styleFrom(
        foregroundColor: appColorScheme.warning,
        disabledForegroundColor: appColorScheme.warning,
      ).withCommonOutlinedButtonStyle(
        appColorScheme: appColorScheme,
        normalButtonTextColor: appColorScheme.warning,
      ),
      primaryText: TextButton.styleFrom(
        foregroundColor: appColorScheme.primary,
        disabledForegroundColor: appColorScheme.primary,
      ).withCommonTextButtonStyle(
        appColorScheme: appColorScheme,
      ),
      secondaryText: TextButton.styleFrom(
        foregroundColor: appColorScheme.secondary,
        disabledForegroundColor: appColorScheme.secondary,
      ).withCommonTextButtonStyle(
        appColorScheme: appColorScheme,
      ),
      errorText: TextButton.styleFrom(
        foregroundColor: appColorScheme.error,
        disabledForegroundColor: appColorScheme.error,
      ).withCommonTextButtonStyle(
        appColorScheme: appColorScheme,
      ),
      successText: TextButton.styleFrom(
        foregroundColor: appColorScheme.success,
        disabledForegroundColor: appColorScheme.success,
      ).withCommonTextButtonStyle(
        appColorScheme: appColorScheme,
      ),
      infoText: TextButton.styleFrom(
        foregroundColor: appColorScheme.info,
        disabledForegroundColor: appColorScheme.info,
      ).withCommonTextButtonStyle(
        appColorScheme: appColorScheme,
      ),
      warningText: TextButton.styleFrom(
        foregroundColor: appColorScheme.warning,
        disabledForegroundColor: appColorScheme.warning,
      ).withCommonTextButtonStyle(
        appColorScheme: appColorScheme,
        normalButtonTextColor: appColorScheme.buttonTextBlack,
      ),
    );
  }

  @override
  ThemeExtension<AppButtonTheme> copyWith({
    ButtonStyle? primaryElevated,
    ButtonStyle? secondaryElevated,
    ButtonStyle? errorElevated,
    ButtonStyle? successElevated,
    ButtonStyle? infoElevated,
    ButtonStyle? warningElevated,
    ButtonStyle? primaryOutlined,
    ButtonStyle? secondaryOutlined,
    ButtonStyle? errorOutlined,
    ButtonStyle? successOutlined,
    ButtonStyle? infoOutlined,
    ButtonStyle? warningOutlined,
    ButtonStyle? primaryText,
    ButtonStyle? secondaryText,
    ButtonStyle? errorText,
    ButtonStyle? successText,
    ButtonStyle? infoText,
    ButtonStyle? warningText,
  }) {
    return AppButtonTheme(
      primaryElevated: primaryElevated ?? this.primaryElevated,
      secondaryElevated: secondaryElevated ?? this.secondaryElevated,
      errorElevated: errorElevated ?? this.errorElevated,
      successElevated: successElevated ?? this.successElevated,
      infoElevated: infoElevated ?? this.infoElevated,
      warningElevated: warningElevated ?? this.warningElevated,
      primaryOutlined: primaryOutlined ?? this.primaryOutlined,
      secondaryOutlined: secondaryOutlined ?? this.secondaryOutlined,
      errorOutlined: errorOutlined ?? this.errorOutlined,
      successOutlined: successOutlined ?? this.successOutlined,
      infoOutlined: infoOutlined ?? this.infoOutlined,
      warningOutlined: warningOutlined ?? this.warningOutlined,
      primaryText: primaryText ?? this.primaryText,
      secondaryText: secondaryText ?? this.secondaryText,
      errorText: errorText ?? this.errorText,
      successText: successText ?? this.successText,
      infoText: infoText ?? this.infoText,
      warningText: warningText ?? this.warningText,
    );
  }

  @override
  ThemeExtension<AppButtonTheme> lerp(ThemeExtension<AppButtonTheme>? other, double t) {
    if (other is! AppButtonTheme) {
      return this;
    }

    return AppButtonTheme(
      primaryElevated: other.primaryElevated,
      secondaryElevated: other.secondaryElevated,
      errorElevated: other.errorElevated,
      successElevated: other.successElevated,
      infoElevated: other.infoElevated,
      warningElevated: other.warningElevated,
      primaryOutlined: other.primaryOutlined,
      secondaryOutlined: other.secondaryOutlined,
      errorOutlined: other.errorOutlined,
      successOutlined: other.successOutlined,
      infoOutlined: other.infoOutlined,
      warningOutlined: other.warningOutlined,
      primaryText: other.primaryText,
      secondaryText: other.secondaryText,
      errorText: other.errorText,
      successText: other.successText,
      infoText: other.infoText,
      warningText: other.warningText,
    );
  }
}

extension ButtonStyleExtension on ButtonStyle {
  ButtonStyle withCommonButtonStyle({
    required AppColorScheme appColorScheme,
    Color? normalButtonTextColor,
  }) {
    return copyWith(
      minimumSize: MaterialStateProperty.all(const Size(60.0, 46.0)),
      mouseCursor: MaterialStateProperty.resolveWith((state) {
        if (state.contains(MaterialState.disabled)) {
          return SystemMouseCursors.forbidden;
        }

        return null;
      }),
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return appColorScheme.buttonTextDisabled;
        }

        return normalButtonTextColor;
      }),
    );
  }

  ButtonStyle withCommonOutlinedButtonStyle({
    required AppColorScheme appColorScheme,
    Color? normalButtonTextColor,
  }) {
    return withCommonButtonStyle(
      appColorScheme: appColorScheme,
      normalButtonTextColor: normalButtonTextColor,
    ).copyWith(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        return foregroundColor!.resolve(states);
      }),
      side: MaterialStateProperty.resolveWith((states) {
        return BorderSide(
          width: 1.0,
          color: foregroundColor!.resolve(states)!,
        );
      }),
    );
  }

  ButtonStyle withCommonTextButtonStyle({
    required AppColorScheme appColorScheme,
    Color? normalButtonTextColor,
  }) {
    return withCommonButtonStyle(
      appColorScheme: appColorScheme,
      normalButtonTextColor: normalButtonTextColor,
    ).copyWith(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        return foregroundColor!.resolve(states);
      }),
    );
  }
}
