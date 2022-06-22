import 'package:flutter/material.dart';

class AppSidebarTheme extends ThemeExtension<AppSidebarTheme> {
  final Color backgroundColor;
  final Color foregroundColor;
  final double sidebarWidth;
  final double sidebarLeftPadding;
  final double sidebarTopPadding;
  final double sidebarRightPadding;
  final double sidebarBottomPadding;
  final double headerUserProfileRadius;
  final double headerUsernameFontSize;
  final double headerTextButtonFontSize;
  final double menuFontSize;
  final double menuBorderRadius;
  final double menuLeftPadding;
  final double menuTopPadding;
  final double menuRightPadding;
  final double menuBottomPadding;
  final Color menuHoverColor;
  final Color menuSelectedFontColor;
  final Color menuSelectedBackgroundColor;
  final Color menuExpandedBackgroundColor;
  final Color menuExpandedHoverColor;
  final double menuExpandedChildLeftPadding;
  final double menuExpandedChildTopPadding;
  final double menuExpandedChildRightPadding;
  final double menuExpandedChildBottomPadding;

  const AppSidebarTheme({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.sidebarWidth,
    required this.sidebarLeftPadding,
    required this.sidebarTopPadding,
    required this.sidebarRightPadding,
    required this.sidebarBottomPadding,
    required this.headerUserProfileRadius,
    required this.headerUsernameFontSize,
    required this.headerTextButtonFontSize,
    required this.menuFontSize,
    required this.menuBorderRadius,
    required this.menuLeftPadding,
    required this.menuTopPadding,
    required this.menuRightPadding,
    required this.menuBottomPadding,
    required this.menuHoverColor,
    required this.menuSelectedFontColor,
    required this.menuSelectedBackgroundColor,
    required this.menuExpandedBackgroundColor,
    required this.menuExpandedHoverColor,
    required this.menuExpandedChildLeftPadding,
    required this.menuExpandedChildTopPadding,
    required this.menuExpandedChildRightPadding,
    required this.menuExpandedChildBottomPadding,
  });

  @override
  ThemeExtension<AppSidebarTheme> copyWith({
    Color? backgroundColor,
    Color? foregroundColor,
    double? sidebarWidth,
    double? sidebarLeftPadding,
    double? sidebarTopPadding,
    double? sidebarRightPadding,
    double? sidebarBottomPadding,
    double? headerUserProfileRadius,
    double? headerUsernameFontSize,
    double? headerTextButtonFontSize,
    double? menuFontSize,
    double? menuBorderRadius,
    double? menuLeftPadding,
    double? menuTopPadding,
    double? menuRightPadding,
    double? menuBottomPadding,
    Color? menuHoverColor,
    Color? menuSelectedFontColor,
    Color? menuSelectedBackgroundColor,
    Color? menuExpandedBackgroundColor,
    Color? menuExpandedHoverColor,
    double? menuExpandedChildLeftPadding,
    double? menuExpandedChildTopPadding,
    double? menuExpandedChildRightPadding,
    double? menuExpandedChildBottomPadding,
  }) {
    return AppSidebarTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      sidebarWidth: sidebarWidth ?? this.sidebarWidth,
      sidebarLeftPadding: sidebarLeftPadding ?? this.sidebarLeftPadding,
      sidebarTopPadding: sidebarTopPadding ?? this.sidebarTopPadding,
      sidebarRightPadding: sidebarRightPadding ?? this.sidebarRightPadding,
      sidebarBottomPadding: sidebarBottomPadding ?? this.sidebarBottomPadding,
      headerUserProfileRadius: headerUserProfileRadius ?? this.headerUserProfileRadius,
      headerUsernameFontSize: headerUsernameFontSize ?? this.headerUsernameFontSize,
      headerTextButtonFontSize: headerTextButtonFontSize ?? this.headerTextButtonFontSize,
      menuFontSize: menuFontSize ?? this.menuFontSize,
      menuBorderRadius: menuBorderRadius ?? this.menuBorderRadius,
      menuLeftPadding: menuBorderRadius ?? this.menuLeftPadding,
      menuTopPadding: menuBorderRadius ?? this.menuTopPadding,
      menuRightPadding: menuBorderRadius ?? this.menuRightPadding,
      menuBottomPadding: menuBorderRadius ?? this.menuBottomPadding,
      menuHoverColor: menuHoverColor ?? this.menuHoverColor,
      menuSelectedFontColor: menuSelectedFontColor ?? this.menuSelectedFontColor,
      menuSelectedBackgroundColor: menuSelectedBackgroundColor ?? this.menuSelectedBackgroundColor,
      menuExpandedBackgroundColor: menuExpandedBackgroundColor ?? this.menuExpandedBackgroundColor,
      menuExpandedHoverColor: menuExpandedHoverColor ?? this.menuExpandedHoverColor,
      menuExpandedChildLeftPadding: menuExpandedChildLeftPadding ?? this.menuExpandedChildLeftPadding,
      menuExpandedChildTopPadding: menuExpandedChildTopPadding ?? this.menuExpandedChildTopPadding,
      menuExpandedChildRightPadding: menuExpandedChildRightPadding ?? this.menuExpandedChildRightPadding,
      menuExpandedChildBottomPadding: menuExpandedChildBottomPadding ?? this.menuExpandedChildBottomPadding,
    );
  }

  @override
  ThemeExtension<AppSidebarTheme> lerp(ThemeExtension<AppSidebarTheme>? other, double t) {
    if (other is! AppSidebarTheme) {
      return this;
    }

    return AppSidebarTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      foregroundColor: Color.lerp(foregroundColor, other.foregroundColor, t)!,
      sidebarWidth: other.sidebarWidth,
      sidebarLeftPadding: other.sidebarLeftPadding,
      sidebarTopPadding: other.sidebarTopPadding,
      sidebarRightPadding: other.sidebarRightPadding,
      sidebarBottomPadding: other.sidebarBottomPadding,
      headerUserProfileRadius: other.headerUserProfileRadius,
      headerUsernameFontSize: other.headerUsernameFontSize,
      headerTextButtonFontSize: other.headerTextButtonFontSize,
      menuFontSize: other.menuFontSize,
      menuBorderRadius: other.menuBorderRadius,
      menuLeftPadding: other.menuLeftPadding,
      menuTopPadding: other.menuTopPadding,
      menuRightPadding: other.menuRightPadding,
      menuBottomPadding: other.menuBottomPadding,
      menuHoverColor: Color.lerp(menuHoverColor, other.menuHoverColor, t)!,
      menuSelectedFontColor: Color.lerp(menuSelectedFontColor, other.menuSelectedFontColor, t)!,
      menuSelectedBackgroundColor: Color.lerp(menuSelectedBackgroundColor, other.menuSelectedBackgroundColor, t)!,
      menuExpandedBackgroundColor: Color.lerp(menuExpandedBackgroundColor, other.menuExpandedBackgroundColor, t)!,
      menuExpandedHoverColor: Color.lerp(menuExpandedHoverColor, other.menuExpandedHoverColor, t)!,
      menuExpandedChildLeftPadding: other.menuExpandedChildLeftPadding,
      menuExpandedChildTopPadding: other.menuExpandedChildTopPadding,
      menuExpandedChildRightPadding: other.menuExpandedChildRightPadding,
      menuExpandedChildBottomPadding: other.menuExpandedChildBottomPadding,
    );
  }
}
