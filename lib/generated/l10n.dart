// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalization {
  AppLocalization();

  static AppLocalization? _current;

  static AppLocalization get current {
    assert(_current != null,
        'No instance of AppLocalization was loaded. Try to initialize the AppLocalization delegate before accessing AppLocalization.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalization();
      AppLocalization._current = instance;

      return instance;
    });
  }

  static AppLocalization of(BuildContext context) {
    final instance = AppLocalization.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalization present in the widget tree. Did you add AppLocalization.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalization? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  /// `ЧАТЫ`
  String get chats {
    return Intl.message(
      'ЧАТЫ',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `OFF`
  String get off {
    return Intl.message(
      'OFF',
      name: 'off',
      desc: '',
      args: [],
    );
  }

  /// `Начни общение`
  String get start_conversation {
    return Intl.message(
      'Начни общение',
      name: 'start_conversation',
      desc: '',
      args: [],
    );
  }

  /// `Режим инкогнито на 24 часа`
  String get incognito_mode {
    return Intl.message(
      'Режим инкогнито на 24 часа',
      name: 'incognito_mode',
      desc: '',
      args: [],
    );
  }

  /// `Стань невидимкой в ленте и чатах, скрой объявление и наслаждайся <Space> незамеченным`
  String get incognito_mode_desc {
    return Intl.message(
      'Стань невидимкой в ленте и чатах, скрой объявление и наслаждайся <Space> незамеченным',
      name: 'incognito_mode_desc',
      desc: '',
      args: [],
    );
  }

  /// `Купить`
  String get buy {
    return Intl.message(
      'Купить',
      name: 'buy',
      desc: '',
      args: [],
    );
  }

  /// `условия и положения`
  String get status {
    return Intl.message(
      'условия и положения',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Хит`
  String get top {
    return Intl.message(
      'Хит',
      name: 'top',
      desc: '',
      args: [],
    );
  }

  /// `₽`
  String get sum {
    return Intl.message(
      '₽',
      name: 'sum',
      desc: '',
      args: [],
    );
  }

  /// `Сообщение...`
  String get massage {
    return Intl.message(
      'Сообщение...',
      name: 'massage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalization> load(Locale locale) => AppLocalization.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
