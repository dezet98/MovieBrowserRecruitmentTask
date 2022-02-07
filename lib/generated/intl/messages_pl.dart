// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
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
  String get localeName => 'pl';

  static String m0(amount) => "\$${amount}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "budget": MessageLookupByLibrary.simpleMessage("Budżet"),
        "buttonsTitle":
            MessageLookupByLibrary.simpleMessage("2-stanowe przyciski"),
        "dolarPrefix": m0,
        "errorOccur": MessageLookupByLibrary.simpleMessage("Wystąpił błąd"),
        "movieListInitial": MessageLookupByLibrary.simpleMessage(
            "Aby znaleźć filmy, użyj wyszukiwarki"),
        "movieListTitle":
            MessageLookupByLibrary.simpleMessage("Wyszukiwarka filmów"),
        "no": MessageLookupByLibrary.simpleMessage("Nie!"),
        "noInternet":
            MessageLookupByLibrary.simpleMessage("Brak dostępu do internetu"),
        "noResults": MessageLookupByLibrary.simpleMessage("Brak rezultatów"),
        "revenue": MessageLookupByLibrary.simpleMessage("Przychód"),
        "search": MessageLookupByLibrary.simpleMessage("Szukaj..."),
        "shouldWatchToday": MessageLookupByLibrary.simpleMessage(
            "Czy powinienem to dzisiaj obejrzeć?"),
        "yes": MessageLookupByLibrary.simpleMessage("Tak!")
      };
}
