// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_Hant locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh_Hant';

  static String m0(count) => "${Intl.plural(count, one: '按鈕', other: '按鈕')}";

  static String m1(count) => "${Intl.plural(count, one: '顏色', other: '顏色')}";

  static String m2(count) => "${Intl.plural(count, one: '彈窗', other: '彈窗')}";

  static String m3(value) => "此字段必須與${value}相符";

  static String m4(count) => "${Intl.plural(count, one: '擴展', other: '擴展')}";

  static String m5(count) => "${Intl.plural(count, one: '表單', other: '表單')}";

  static String m6(max) => "此字段必須小於或等於${max}";

  static String m7(maxLength) => "此字段的長度必須小於或等於${maxLength}";

  static String m8(min) => "此字段必須大於或等於${min}";

  static String m9(minLength) => "此字段的長度必須大於或等於${minLength}";

  static String m10(count) => "${Intl.plural(count, one: '新訂單', other: '新訂單')}";

  static String m11(count) => "${Intl.plural(count, one: '新用戶', other: '新用戶')}";

  static String m12(value) => "此字段不得等於${value}";

  static String m13(count) => "${Intl.plural(count, one: '頁面', other: '頁面')}";

  static String m14(count) =>
      "${Intl.plural(count, one: '未決問題', other: '未決問題')}";

  static String m15(count) =>
      "${Intl.plural(count, one: '最新訂單', other: '最新訂單')}";

  static String m16(count) =>
      "${Intl.plural(count, one: 'UI 元素', other: 'UI 元素')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account": MessageLookupByLibrary.simpleMessage("賬戶"),
        "adminPortalLogin": MessageLookupByLibrary.simpleMessage("管理後台登錄"),
        "appTitle": MessageLookupByLibrary.simpleMessage("Web 管理後台"),
        "backToLogin": MessageLookupByLibrary.simpleMessage("返回登入頁面"),
        "buttonEmphasis": MessageLookupByLibrary.simpleMessage("按鈕強調"),
        "buttons": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "closeNavigationMenu": MessageLookupByLibrary.simpleMessage("關閉導航菜單"),
        "colorPalette": MessageLookupByLibrary.simpleMessage("調色板"),
        "colorScheme": MessageLookupByLibrary.simpleMessage("配色方案"),
        "colors": m1,
        "confirmDeleteRecord": MessageLookupByLibrary.simpleMessage("確定刪除此記錄？"),
        "confirmSubmitRecord": MessageLookupByLibrary.simpleMessage("確定提交此記錄？"),
        "copy": MessageLookupByLibrary.simpleMessage("複製"),
        "creditCardErrorText":
            MessageLookupByLibrary.simpleMessage("此字段需要有效的信用卡號碼。"),
        "crudBack": MessageLookupByLibrary.simpleMessage("返回"),
        "crudDelete": MessageLookupByLibrary.simpleMessage("刪除"),
        "crudDetail": MessageLookupByLibrary.simpleMessage("詳情"),
        "crudNew": MessageLookupByLibrary.simpleMessage("創建"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("深色主題"),
        "dashboard": MessageLookupByLibrary.simpleMessage("儀錶盤"),
        "dateStringErrorText":
            MessageLookupByLibrary.simpleMessage("此字段需要有效的日期字符串。"),
        "dialogs": m2,
        "dontHaveAnAccount": MessageLookupByLibrary.simpleMessage("還未有賬戶？"),
        "email": MessageLookupByLibrary.simpleMessage("電子郵件地址"),
        "emailErrorText":
            MessageLookupByLibrary.simpleMessage("此字段需要有效的電子郵件地址。"),
        "equalErrorText": m3,
        "error404": MessageLookupByLibrary.simpleMessage("404 錯誤"),
        "error404Message":
            MessageLookupByLibrary.simpleMessage("很抱歉，你正在尋找的頁面不存在或已經被移除。"),
        "error404Title": MessageLookupByLibrary.simpleMessage("找不到頁面"),
        "example": MessageLookupByLibrary.simpleMessage("例子"),
        "extensions": m4,
        "forms": m5,
        "generalUi": MessageLookupByLibrary.simpleMessage("常規 UI"),
        "hi": MessageLookupByLibrary.simpleMessage("您好"),
        "homePage": MessageLookupByLibrary.simpleMessage("首頁"),
        "iframeDemo": MessageLookupByLibrary.simpleMessage("IFrame 演示"),
        "integerErrorText": MessageLookupByLibrary.simpleMessage("此字段需要有效的整數。"),
        "ipErrorText": MessageLookupByLibrary.simpleMessage("此字段需要有效的IP。"),
        "language": MessageLookupByLibrary.simpleMessage("語言"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("亮色主題"),
        "login": MessageLookupByLibrary.simpleMessage("登入"),
        "loginNow": MessageLookupByLibrary.simpleMessage("馬上登入！"),
        "logout": MessageLookupByLibrary.simpleMessage("登出"),
        "loremIpsum":
            MessageLookupByLibrary.simpleMessage("這時候風雨也停止進行曲的合奏，四方雲集，由何處開始"),
        "matchErrorText": MessageLookupByLibrary.simpleMessage("此字段與格式不匹配。"),
        "maxErrorText": m6,
        "maxLengthErrorText": m7,
        "minErrorText": m8,
        "minLengthErrorText": m9,
        "myProfile": MessageLookupByLibrary.simpleMessage("我的個人資料"),
        "newOrders": m10,
        "newUsers": m11,
        "notEqualErrorText": m12,
        "numericErrorText": MessageLookupByLibrary.simpleMessage("此字段必須是數字。"),
        "openInNewTab": MessageLookupByLibrary.simpleMessage("在新標籤打開"),
        "pages": m13,
        "password": MessageLookupByLibrary.simpleMessage("密碼"),
        "passwordHelperText":
            MessageLookupByLibrary.simpleMessage("* 6 - 18 個字"),
        "passwordNotMatch": MessageLookupByLibrary.simpleMessage("密碼不匹配。"),
        "pendingIssues": m14,
        "recentOrders": m15,
        "recordDeletedSuccessfully":
            MessageLookupByLibrary.simpleMessage("記錄已成功刪除。"),
        "recordSavedSuccessfully":
            MessageLookupByLibrary.simpleMessage("記錄已成功保存。"),
        "recordSubmittedSuccessfully":
            MessageLookupByLibrary.simpleMessage("記錄已成功提交。"),
        "register": MessageLookupByLibrary.simpleMessage("註冊"),
        "registerANewAccount": MessageLookupByLibrary.simpleMessage("註冊新賬戶"),
        "registerNow": MessageLookupByLibrary.simpleMessage("現在就註冊！"),
        "requiredErrorText": MessageLookupByLibrary.simpleMessage("此字段不能為空。"),
        "retypePassword": MessageLookupByLibrary.simpleMessage("重新輸入密碼"),
        "save": MessageLookupByLibrary.simpleMessage("保存"),
        "search": MessageLookupByLibrary.simpleMessage("搜索"),
        "submit": MessageLookupByLibrary.simpleMessage("提交"),
        "text": MessageLookupByLibrary.simpleMessage("文字"),
        "textEmphasis": MessageLookupByLibrary.simpleMessage("文字強調"),
        "textTheme": MessageLookupByLibrary.simpleMessage("文字主題"),
        "todaySales": MessageLookupByLibrary.simpleMessage("今日銷售額"),
        "typography": MessageLookupByLibrary.simpleMessage("排版"),
        "uiElements": m16,
        "urlErrorText": MessageLookupByLibrary.simpleMessage("此字段需要有效的URL地址。"),
        "username": MessageLookupByLibrary.simpleMessage("用戶名"),
        "yes": MessageLookupByLibrary.simpleMessage("是的")
      };
}
