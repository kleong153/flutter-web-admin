// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_Hans locale. All the
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
  String get localeName => 'zh_Hans';

  static String m0(count) => "${Intl.plural(count, one: '按钮', other: '按钮')}";

  static String m1(count) => "${Intl.plural(count, one: '颜色', other: '颜色')}";

  static String m2(count) => "${Intl.plural(count, one: '弹窗', other: '弹窗')}";

  static String m3(value) => "此字段必须与${value}相符";

  static String m4(count) => "${Intl.plural(count, one: '扩展', other: '扩展')}";

  static String m5(count) => "${Intl.plural(count, one: '表单', other: '表单')}";

  static String m6(max) => "此字段必须小于或等于${max}";

  static String m7(maxLength) => "此字段的长度必须小于或等于${maxLength}";

  static String m8(min) => "此字段必须大于或等于${min}";

  static String m9(minLength) => "此字段的长度必须大于或等于${minLength}";

  static String m10(count) => "${Intl.plural(count, one: '新订单', other: '新订单')}";

  static String m11(count) => "${Intl.plural(count, one: '新用户', other: '新用户')}";

  static String m12(value) => "此字段不得等于${value}";

  static String m13(count) => "${Intl.plural(count, one: '页面', other: '页面')}";

  static String m14(count) =>
      "${Intl.plural(count, one: '未决问题', other: '未决问题')}";

  static String m15(count) =>
      "${Intl.plural(count, one: '最新订单', other: '最新订单')}";

  static String m16(count) =>
      "${Intl.plural(count, one: 'UI 元素', other: 'UI 元素')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account": MessageLookupByLibrary.simpleMessage("账户"),
        "adminPortalLogin": MessageLookupByLibrary.simpleMessage("管理后台登录"),
        "appTitle": MessageLookupByLibrary.simpleMessage("Web 管理后台"),
        "backToLogin": MessageLookupByLibrary.simpleMessage("返回登入页面"),
        "buttonEmphasis": MessageLookupByLibrary.simpleMessage("按钮强调"),
        "buttons": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "closeNavigationMenu": MessageLookupByLibrary.simpleMessage("关闭导航菜单"),
        "colorPalette": MessageLookupByLibrary.simpleMessage("调色板"),
        "colorScheme": MessageLookupByLibrary.simpleMessage("配色方案"),
        "colors": m1,
        "confirmDeleteRecord": MessageLookupByLibrary.simpleMessage("确定删除此记录？"),
        "confirmSubmitRecord": MessageLookupByLibrary.simpleMessage("确定提交此记录？"),
        "copy": MessageLookupByLibrary.simpleMessage("复制"),
        "creditCardErrorText":
            MessageLookupByLibrary.simpleMessage("此字段需要有效的信用卡号码。"),
        "crudBack": MessageLookupByLibrary.simpleMessage("返回"),
        "crudDelete": MessageLookupByLibrary.simpleMessage("删除"),
        "crudDetail": MessageLookupByLibrary.simpleMessage("详情"),
        "crudNew": MessageLookupByLibrary.simpleMessage("创建"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("深色主题"),
        "dashboard": MessageLookupByLibrary.simpleMessage("仪表盘"),
        "dateStringErrorText":
            MessageLookupByLibrary.simpleMessage("此字段需要有效的日期字符串。"),
        "dialogs": m2,
        "dontHaveAnAccount": MessageLookupByLibrary.simpleMessage("还未有账户？"),
        "email": MessageLookupByLibrary.simpleMessage("电子邮件地址"),
        "emailErrorText":
            MessageLookupByLibrary.simpleMessage("此字段需要有效的电子邮件地址。"),
        "equalErrorText": m3,
        "error404": MessageLookupByLibrary.simpleMessage("404 错误"),
        "error404Message":
            MessageLookupByLibrary.simpleMessage("很抱歉，你正在寻找的页面不存在或已经被移除。"),
        "error404Title": MessageLookupByLibrary.simpleMessage("找不到页面"),
        "example": MessageLookupByLibrary.simpleMessage("例子"),
        "extensions": m4,
        "forms": m5,
        "generalUi": MessageLookupByLibrary.simpleMessage("常规 UI"),
        "hi": MessageLookupByLibrary.simpleMessage("您好"),
        "homePage": MessageLookupByLibrary.simpleMessage("首页"),
        "iframeDemo": MessageLookupByLibrary.simpleMessage("IFrame 演示"),
        "integerErrorText": MessageLookupByLibrary.simpleMessage("此字段需要有效的整数。"),
        "ipErrorText": MessageLookupByLibrary.simpleMessage("此字段需要有效的IP。"),
        "language": MessageLookupByLibrary.simpleMessage("语言"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("亮色主题"),
        "login": MessageLookupByLibrary.simpleMessage("登入"),
        "loginNow": MessageLookupByLibrary.simpleMessage("马上登入！"),
        "logout": MessageLookupByLibrary.simpleMessage("登出"),
        "loremIpsum":
            MessageLookupByLibrary.simpleMessage("这时候风雨也停止进行曲的合奏，四方云集，由何处开始"),
        "matchErrorText": MessageLookupByLibrary.simpleMessage("此字段与格式不匹配。"),
        "maxErrorText": m6,
        "maxLengthErrorText": m7,
        "minErrorText": m8,
        "minLengthErrorText": m9,
        "myProfile": MessageLookupByLibrary.simpleMessage("我的个人资料"),
        "newOrders": m10,
        "newUsers": m11,
        "notEqualErrorText": m12,
        "numericErrorText": MessageLookupByLibrary.simpleMessage("此字段必须是数字。"),
        "openInNewTab": MessageLookupByLibrary.simpleMessage("在新标签打开"),
        "pages": m13,
        "password": MessageLookupByLibrary.simpleMessage("密码"),
        "passwordHelperText":
            MessageLookupByLibrary.simpleMessage("* 6 - 18 个字"),
        "passwordNotMatch": MessageLookupByLibrary.simpleMessage("密码不匹配。"),
        "pendingIssues": m14,
        "recentOrders": m15,
        "recordDeletedSuccessfully":
            MessageLookupByLibrary.simpleMessage("记录已成功删除。"),
        "recordSavedSuccessfully":
            MessageLookupByLibrary.simpleMessage("记录已成功保存。"),
        "recordSubmittedSuccessfully":
            MessageLookupByLibrary.simpleMessage("记录已成功提交。"),
        "register": MessageLookupByLibrary.simpleMessage("注册"),
        "registerANewAccount": MessageLookupByLibrary.simpleMessage("注册新账户"),
        "registerNow": MessageLookupByLibrary.simpleMessage("现在就注册！"),
        "requiredErrorText": MessageLookupByLibrary.simpleMessage("此字段不能为空。"),
        "retypePassword": MessageLookupByLibrary.simpleMessage("重新输入密码"),
        "save": MessageLookupByLibrary.simpleMessage("保存"),
        "search": MessageLookupByLibrary.simpleMessage("搜索"),
        "submit": MessageLookupByLibrary.simpleMessage("提交"),
        "text": MessageLookupByLibrary.simpleMessage("文字"),
        "textEmphasis": MessageLookupByLibrary.simpleMessage("文字强调"),
        "textTheme": MessageLookupByLibrary.simpleMessage("文字主题"),
        "todaySales": MessageLookupByLibrary.simpleMessage("今日销售额"),
        "typography": MessageLookupByLibrary.simpleMessage("排版"),
        "uiElements": m16,
        "urlErrorText": MessageLookupByLibrary.simpleMessage("此字段需要有效的URL地址。"),
        "username": MessageLookupByLibrary.simpleMessage("用户名"),
        "yes": MessageLookupByLibrary.simpleMessage("是的")
      };
}
