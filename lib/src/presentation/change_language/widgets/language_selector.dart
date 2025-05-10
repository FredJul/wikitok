import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wikitok/src/presentation/change_language/viewmodels/locale_view_model.dart';
import 'package:wikitok/src/presentation/common/l10n/arb/app_localizations.dart';

class LanguageSelector extends ConsumerWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const supportedLocales = AppLocalizations.supportedLocales;
    final currentLocale = ref.watch(localeViewModelProvider);

    return PopupMenuButton<String>(
      icon: const Icon(Icons.language),
      onSelected: (String languageCode) {
        ref.read(localeViewModelProvider.notifier).setLocale(languageCode);
      },
      itemBuilder: (BuildContext context) {
        return supportedLocales.map((Locale locale) {
          final languageCode = locale.languageCode;
          return PopupMenuItem<String>(
            value: languageCode,
            child: Row(
              children: [
                Text(languageCode.toUpperCase()),
                if (currentLocale?.languageCode == languageCode) ...[
                  const SizedBox(width: 8),
                  const Icon(Icons.check, size: 16),
                ],
              ],
            ),
          );
        }).toList();
      },
    );
  }
}
