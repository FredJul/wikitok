// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'WikiTok';

  @override
  String get feedRetryButton => 'Réssayer';

  @override
  String get serverError => 'Impossible de récupérer les articles. Veuillez réessayer.';

  @override
  String get networkError => 'Pas de connexion internet ou serveur inaccessible';

  @override
  String get cacheError => 'Impossible de retrouver les parmètres';

  @override
  String get unexpectedError => 'Une erreur inattendue s\'est produite.';

  @override
  String get articleReadMoreButton => 'Lire plus';

  @override
  String articleShareContent(String title, String excerpt, String url) {
    return 'Voici un article intéressant trouvé grâce à WikiTok : \"$title\".\n\n\"$excerpt\"\n\nPour en savoir plus, visitez $url';
  }
}
