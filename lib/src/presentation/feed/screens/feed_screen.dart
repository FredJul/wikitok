import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wikitok/src/presentation/change_language/viewmodels/locale_view_model.dart';
import 'package:wikitok/src/presentation/change_language/widgets/language_selector.dart';
import 'package:wikitok/src/presentation/common/failures/failures.dart';
import 'package:wikitok/src/presentation/common/l10n/l10n.dart';
import 'package:wikitok/src/presentation/feed/viewmodels/feed_state.dart';
import 'package:wikitok/src/presentation/feed/viewmodels/feed_view_model.dart';
import 'package:wikitok/src/presentation/feed/widgets/feed_data.dart';
import 'package:wikitok/src/presentation/feed/widgets/feed_error.dart';
import 'package:wikitok/src/presentation/feed/widgets/feed_loading.dart';

class FeedScreen extends ConsumerStatefulWidget {
  const FeedScreen({super.key});

  @override
  ConsumerState<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends ConsumerState<FeedScreen> {
  @override
  void initState() {
    super.initState();

    final locale = ref.read(localeViewModelProvider);
    _fetchFeed(locale);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<Locale?>(localeViewModelProvider, (previous, locale) {
      _fetchFeed(locale);
    });

    final feedState = ref.watch(feedViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.appTitle),
        actions: const [LanguageSelector()],
      ),
      body: switch (feedState.status) {
        FeedStatus.loading => const FeedLoading(),
        FeedStatus.failure => FeedError(
          error: feedState.error!.toLocalizedMessage(context),
        ),
        FeedStatus.success => FeedData(feed: feedState.feed),
      },
    );
  }

  void _fetchFeed(Locale? locale) {
    if (locale != null) {
      ref
          .read(feedViewModelProvider.notifier)
          .fetchFeed(languageCode: locale.languageCode, emptyCurrentFeed: true);
    }
  }
}
