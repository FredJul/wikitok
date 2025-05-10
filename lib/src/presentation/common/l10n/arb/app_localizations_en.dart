// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'WikiTok';

  @override
  String get feedRetryButton => 'Retry';

  @override
  String get serverError => 'Could not fetch articles. Please try again';

  @override
  String get networkError => 'No internet or server unreachable';

  @override
  String get cacheError => 'Could not retrieve settings';

  @override
  String get unexpectedError => 'An unexpected error occurred';

  @override
  String get articleReadMoreButton => 'Read more';

  @override
  String articleShareContent(String title, String excerpt, String url) {
    return 'Here\'s an interesting article found via WikiTok: \"$title\".\n\n\"$excerpt\"\n\nLearn more by visiting $url';
  }
}
