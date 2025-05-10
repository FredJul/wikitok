import 'package:flutter/material.dart';

class FeedLoading extends StatelessWidget {
  const FeedLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator.adaptive());
  }
}
