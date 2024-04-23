import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_pair_baru/providers/favorite_provider.dart';

class WordCard extends StatelessWidget {
  WordCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<WordModel>(
      builder: (context, value, child) => Card(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            value.currentPair.asPascalCase,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer),
          ),
        ),
      ),
    );
  }
}
