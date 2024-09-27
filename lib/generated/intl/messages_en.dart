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

  static String m0(user) => "Welcome, {${user}}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "change_password":
            MessageLookupByLibrary.simpleMessage("Change password"),
        "choose_language":
            MessageLookupByLibrary.simpleMessage("Choose language"),
        "choose_theme": MessageLookupByLibrary.simpleMessage("Choose theme"),
        "continuee": MessageLookupByLibrary.simpleMessage("Continue"),
        "digital_sign": MessageLookupByLibrary.simpleMessage("Digital"),
        "document_title": MessageLookupByLibrary.simpleMessage("Document"),
        "email_employee_id":
            MessageLookupByLibrary.simpleMessage("Email/Employee ID"),
        "english": MessageLookupByLibrary.simpleMessage("English"),
        "hello": MessageLookupByLibrary.simpleMessage("Hi"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "ignore": MessageLookupByLibrary.simpleMessage("ignore"),
        "lb_login_biometric":
            MessageLookupByLibrary.simpleMessage("Login biometric"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "login_failed": MessageLookupByLibrary.simpleMessage("Login failed."),
        "login_forgot_pass":
            MessageLookupByLibrary.simpleMessage("Forgot password"),
        "mission": MessageLookupByLibrary.simpleMessage("Mission"),
        "more": MessageLookupByLibrary.simpleMessage("More"),
        "network_error_unknow":
            MessageLookupByLibrary.simpleMessage("Network is erroring."),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "theme_dark": MessageLookupByLibrary.simpleMessage("Dark"),
        "theme_light": MessageLookupByLibrary.simpleMessage("Light"),
        "user_info_not_found":
            MessageLookupByLibrary.simpleMessage("Cannot get user infomation."),
        "username_password_incorrect": MessageLookupByLibrary.simpleMessage(
            "Username or password incorrect."),
        "v_office": MessageLookupByLibrary.simpleMessage("VOffice"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("Vietnamese"),
        "welcome_employee": m0,
        "welcome_to_voffice":
            MessageLookupByLibrary.simpleMessage("Welcom to VOffice Super")
      };
}
