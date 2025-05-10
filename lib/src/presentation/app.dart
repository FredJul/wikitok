import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wikitok/src/presentation/change_language/viewmodels/locale_view_model.dart';
import 'package:wikitok/src/presentation/common/l10n/arb/app_localizations.dart';
import 'package:wikitok/src/presentation/common/router/router.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeViewModelProvider);

    return MaterialApp.router(
      theme: ThemeData(brightness: Brightness.dark),
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: appRouter,
    );
  }
}
