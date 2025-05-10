import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:wikitok/src/presentation/change_language/viewmodels/locale_view_model.dart';
import 'package:wikitok/src/presentation/common/l10n/l10n.dart';
import 'package:wikitok/src/presentation/feed/viewmodels/feed_view_model.dart';

class FeedError extends ConsumerWidget {
  final String _error;

  const FeedError({super.key, required String error}) : _error = error;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_error, textAlign: TextAlign.center),
          const Gap(16.0),
          FilledButton.icon(
            onPressed: () {
              final locale = ref.read(localeViewModelProvider);
              if (locale != null) {
                ref
                    .read(feedViewModelProvider.notifier)
                    .fetchFeed(languageCode: locale.languageCode);
              }
            },
            label: Text(context.l10n.feedRetryButton),
          ),
        ],
      ),
    );
  }
}
