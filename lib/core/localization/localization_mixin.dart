import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';

mixin LocalizationStateFullMixin<T extends StatefulWidget> on State<T> {
  late AppLocalizations lang;
  late Locale locale;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _init();
  }

  void _init() {
    locale = Localizations.localeOf(context);
    lang = AppLocalizations.of(context)!;
  }
}

extension LocalizationConsumerExtension on BuildContext {
  AppLocalizations get lang => AppLocalizations.of(this)!;

  Locale get locale => Localizations.localeOf(this);
}
