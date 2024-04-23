import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key, required this.pairList});

  final List<WordPair> pairList;

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: theme.colorScheme.onPrimary,
          ),
          centerTitle: true,
          title: Text(
            "Tes WordPair Baru",
            style: TextStyle(color: theme.colorScheme.onPrimary),
          ),
          backgroundColor: theme.colorScheme.primary,
        ),
        body: FavorteList(pairList: widget.pairList));
  }
}

class FavorteList extends StatefulWidget {
  const FavorteList({
    super.key,
    required this.pairList,
  });

  final List<WordPair> pairList;

  @override
  State<FavorteList> createState() => _FavorteListState();
}

class _FavorteListState extends State<FavorteList> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.builder(
        itemCount: widget.pairList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              widget.pairList[index].asPascalCase,
              style: TextStyle(color: theme.colorScheme.onPrimaryContainer),
            ),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    widget.pairList.remove(widget.pairList[index]);
                    print(widget.pairList);
                  });
                },
                icon: Icon(Icons.delete)),
          );
        });
  }
}
