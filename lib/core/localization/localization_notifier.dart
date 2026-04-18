import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'localization_notifier.g.dart';

@riverpod
class Localization extends _$Localization {
  final supportedLocals = const [
    Locale('en'), // English
  ];

  @override
  Locale build() => supportedLocals.first;

  void changeLocale(String languageCode) async {
    state = Locale(languageCode);
  }
}
