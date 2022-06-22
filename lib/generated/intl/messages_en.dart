// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(count) =>
      "${Intl.plural(count, one: 'Button', other: 'Buttons')}";

  static String m1(count) =>
      "${Intl.plural(count, one: 'Color', other: 'Colors')}";

  static String m2(count) =>
      "${Intl.plural(count, one: 'Dialog', other: 'Dialogs')}";

  static String m3(value) => "This field value must be equal to ${value}.";

  static String m4(count) =>
      "${Intl.plural(count, one: 'Extension', other: 'Extensions')}";

  static String m5(count) =>
      "${Intl.plural(count, one: 'Form', other: 'Forms')}";

  static String m6(max) => "Value must be less than or equal to ${max}";

  static String m7(maxLength) =>
      "Value must have a length less than or equal to ${maxLength}";

  static String m8(min) => "Value must be greater than or equal to ${min}.";

  static String m9(minLength) =>
      "Value must have a length greater than or equal to ${minLength}";

  static String m10(count) =>
      "${Intl.plural(count, one: 'New Order', other: 'New Orders')}";

  static String m11(count) =>
      "${Intl.plural(count, one: 'New User', other: 'New Users')}";

  static String m12(value) => "This field value must not be equal to ${value}.";

  static String m13(count) =>
      "${Intl.plural(count, one: 'Page', other: 'Pages')}";

  static String m14(count) =>
      "${Intl.plural(count, one: 'Pending Issue', other: 'Pending Issues')}";

  static String m15(count) =>
      "${Intl.plural(count, one: 'Recent Order', other: 'Recent Orders')}";

  static String m16(count) =>
      "${Intl.plural(count, one: 'UI Element', other: 'UI Elements')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account": MessageLookupByLibrary.simpleMessage("Account"),
        "adminPortalLogin":
            MessageLookupByLibrary.simpleMessage("Admin Portal Login"),
        "appTitle": MessageLookupByLibrary.simpleMessage("Web Admin"),
        "backToLogin": MessageLookupByLibrary.simpleMessage("Back to Login"),
        "buttonEmphasis":
            MessageLookupByLibrary.simpleMessage("Button Emphasis"),
        "buttons": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "closeNavigationMenu":
            MessageLookupByLibrary.simpleMessage("Close Navigation Menu"),
        "colorPalette": MessageLookupByLibrary.simpleMessage("Color Palette"),
        "colorScheme": MessageLookupByLibrary.simpleMessage("Color Scheme"),
        "colors": m1,
        "confirmDeleteRecord":
            MessageLookupByLibrary.simpleMessage("Confirm delete this record?"),
        "confirmSubmitRecord":
            MessageLookupByLibrary.simpleMessage("Confirm submit this record?"),
        "copy": MessageLookupByLibrary.simpleMessage("Copy"),
        "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
            "This field requires a valid credit card number."),
        "crudBack": MessageLookupByLibrary.simpleMessage("Back"),
        "crudDelete": MessageLookupByLibrary.simpleMessage("Delete"),
        "crudDetail": MessageLookupByLibrary.simpleMessage("Detail"),
        "crudNew": MessageLookupByLibrary.simpleMessage("New"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Dark Theme"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Dashboard"),
        "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
            "This field requires a valid date string."),
        "dialogs": m2,
        "dontHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailErrorText": MessageLookupByLibrary.simpleMessage(
            "This field requires a valid email address."),
        "equalErrorText": m3,
        "error404": MessageLookupByLibrary.simpleMessage("Error 404"),
        "error404Message": MessageLookupByLibrary.simpleMessage(
            "Sorry, the page you are looking for has been removed or not exists."),
        "error404Title": MessageLookupByLibrary.simpleMessage("Page not found"),
        "example": MessageLookupByLibrary.simpleMessage("Example"),
        "extensions": m4,
        "forms": m5,
        "generalUi": MessageLookupByLibrary.simpleMessage("General UI"),
        "hi": MessageLookupByLibrary.simpleMessage("Hi"),
        "homePage": MessageLookupByLibrary.simpleMessage("Home"),
        "iframeDemo": MessageLookupByLibrary.simpleMessage("IFrame Demo"),
        "integerErrorText": MessageLookupByLibrary.simpleMessage(
            "This field requires a valid integer."),
        "ipErrorText": MessageLookupByLibrary.simpleMessage(
            "This field requires a valid IP."),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Light Theme"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "loginNow": MessageLookupByLibrary.simpleMessage("Login now!"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "loremIpsum": MessageLookupByLibrary.simpleMessage(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
        "matchErrorText": MessageLookupByLibrary.simpleMessage(
            "Value does not match pattern."),
        "maxErrorText": m6,
        "maxLengthErrorText": m7,
        "minErrorText": m8,
        "minLengthErrorText": m9,
        "myProfile": MessageLookupByLibrary.simpleMessage("My Profile"),
        "newOrders": m10,
        "newUsers": m11,
        "notEqualErrorText": m12,
        "numericErrorText":
            MessageLookupByLibrary.simpleMessage("Value must be numeric."),
        "openInNewTab": MessageLookupByLibrary.simpleMessage("Open in new tab"),
        "pages": m13,
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordHelperText":
            MessageLookupByLibrary.simpleMessage("* 6 - 18 characters"),
        "passwordNotMatch":
            MessageLookupByLibrary.simpleMessage("Password not match."),
        "pendingIssues": m14,
        "recentOrders": m15,
        "recordDeletedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Record deleted successfully."),
        "recordSavedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Record saved successfully."),
        "recordSubmittedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Record submitted successfully."),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "registerANewAccount":
            MessageLookupByLibrary.simpleMessage("Register a new account"),
        "registerNow": MessageLookupByLibrary.simpleMessage("Register now!"),
        "requiredErrorText":
            MessageLookupByLibrary.simpleMessage("This field cannot be empty."),
        "retypePassword":
            MessageLookupByLibrary.simpleMessage("Retype Password"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "text": MessageLookupByLibrary.simpleMessage("Text"),
        "textEmphasis": MessageLookupByLibrary.simpleMessage("Text Emphasis"),
        "textTheme": MessageLookupByLibrary.simpleMessage("Text Theme"),
        "todaySales": MessageLookupByLibrary.simpleMessage("Today Sales"),
        "typography": MessageLookupByLibrary.simpleMessage("Typography"),
        "uiElements": m16,
        "urlErrorText": MessageLookupByLibrary.simpleMessage(
            "This field requires a valid URL address."),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes")
      };
}
