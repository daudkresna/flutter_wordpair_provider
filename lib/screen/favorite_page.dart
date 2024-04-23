import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_pair_baru/providers/favorite_provider.dart';
import 'package:word_pair_baru/util/favorite_tile.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<WordModel>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          centerTitle: true,
          title: Text(
            "Halaman Favorit",
            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: ListView.builder(
          itemCount: value.pairList.length,
          itemBuilder: (context, index) {
            return FavoriteTile(index: index);
          },
        ),
      ),
    );
  }
}
