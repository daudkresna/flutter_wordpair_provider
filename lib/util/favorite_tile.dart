import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_pair_baru/providers/favorite_provider.dart';

class FavoriteTile extends StatelessWidget {
  final int index;
  const FavoriteTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<WordModel>(
      builder: (context, value, child) => ListTile(
        title: Text(value.pairList[index].asPascalCase),
        trailing: IconButton(
            onPressed: () {
              final words = context.read<WordModel>();
              words.removeWord(index);
            },
            icon: Icon(Icons.delete)),
      ),
    );
  }
}
