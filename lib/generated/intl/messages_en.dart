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

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "buy": MessageLookupByLibrary.simpleMessage("Купить"),
        "chats": MessageLookupByLibrary.simpleMessage("ЧАТЫ"),
        "incognito_mode":
            MessageLookupByLibrary.simpleMessage("Режим инкогнито на 24 часа"),
        "incognito_mode_desc": MessageLookupByLibrary.simpleMessage(
            "Стань невидимкой в ленте и чатах, скрой объявление и наслаждайся <Space> незамеченным"),
        "massage": MessageLookupByLibrary.simpleMessage("Сообщение..."),
        "off": MessageLookupByLibrary.simpleMessage("OFF"),
        "start_conversation":
            MessageLookupByLibrary.simpleMessage("Начни общение"),
        "status": MessageLookupByLibrary.simpleMessage("условия и положения"),
        "sum": MessageLookupByLibrary.simpleMessage("₽"),
        "top": MessageLookupByLibrary.simpleMessage("Хит")
      };
}
