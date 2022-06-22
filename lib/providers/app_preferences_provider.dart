import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_admin/constants/values.dart';
import 'package:web_admin/environment.dart';

class AppPreferencesProvider extends ChangeNotifier {
  var _locale = Locale(env.defaultAppLanguageCode);
  var _themeMode = ThemeMode.system;

  Locale get locale => _locale;

  ThemeMode get themeMode => _themeMode;

  Future<void> loadAsync() async {
    final sharedPref = await SharedPreferences.getInstance();

    final langCode = (sharedPref.getString(StorageKeys.appLanguageCode) ?? env.defaultAppLanguageCode);

    if (langCode.contains('_')) {
      final values = langCode.split('_');

      _locale = Locale.fromSubtags(languageCode: values[0], scriptCode: values[1]);
    } else {
      _locale = Locale(langCode);
    }

    _themeMode = ThemeMode.values.byName(sharedPref.getString(StorageKeys.appThemeMode) ?? ThemeMode.system.name);

    notifyListeners();
  }

  Future<void> setLocaleAsync({
    required Locale locale,
    save = true,
  }) async {
    if (locale != _locale) {
      _locale = locale;

      if (save) {
        final sharedPref = await SharedPreferences.getInstance();
        var langCode = locale.languageCode;

        if (locale.scriptCode != null) {
          langCode += '_${locale.scriptCode}';
        }

        await sharedPref.setString(StorageKeys.appLanguageCode, langCode);
      }

      notifyListeners();
    }
  }

  Future<void> setThemeModeAsync({
    required ThemeMode themeMode,
    bool save = true,
  }) async {
    if (themeMode != _themeMode) {
      _themeMode = themeMode;

      if (save) {
        final sharedPref = await SharedPreferences.getInstance();

        await sharedPref.setString(StorageKeys.appThemeMode, themeMode.name);
      }

      notifyListeners();
    }
  }
}
