import 'package:flutter/widgets.dart';
import 'package:wikitok/src/presentation/common/l10n/arb/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
