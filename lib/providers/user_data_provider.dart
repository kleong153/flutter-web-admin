import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_admin/constants/values.dart';

class UserDataProvider extends ChangeNotifier {
  var _userProfileImageUrl = '';
  var _username = '';

  String get userProfileImageUrl => _userProfileImageUrl;

  String get username => _username;

  Future<void> loadAsync() async {
    final sharedPref = await SharedPreferences.getInstance();

    _username = sharedPref.getString(StorageKeys.username) ?? '';
    _userProfileImageUrl = sharedPref.getString(StorageKeys.userProfileImageUrl) ?? '';

    notifyListeners();
  }

  Future<void> setUserDataAsync({
    String? userProfileImageUrl,
    String? username,
  }) async {
    final sharedPref = await SharedPreferences.getInstance();
    var shouldNotify = false;

    if (userProfileImageUrl != null && userProfileImageUrl != _userProfileImageUrl) {
      _userProfileImageUrl = userProfileImageUrl;

      await sharedPref.setString(StorageKeys.userProfileImageUrl, _userProfileImageUrl);

      shouldNotify = true;
    }

    if (username != null && username != _username) {
      _username = username;

      await sharedPref.setString(StorageKeys.username, _username);

      shouldNotify = true;
    }

    if (shouldNotify) {
      notifyListeners();
    }
  }

  Future<void> clearUserDataAsync() async {
    final sharedPref = await SharedPreferences.getInstance();

    await sharedPref.remove(StorageKeys.username);
    await sharedPref.remove(StorageKeys.userProfileImageUrl);

    _username = '';
    _userProfileImageUrl = '';

    notifyListeners();
  }

  bool isUserLoggedIn() {
    return _username.isNotEmpty;
  }
}
