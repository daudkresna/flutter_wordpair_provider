import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_pair_baru/providers/favorite_provider.dart';
import 'package:word_pair_baru/screen/favorite_page.dart';
import 'package:word_pair_baru/util/my_button.dart';
import 'package:word_pair_baru/util/word_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<WordModel>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Tes WordPair Baru",
            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WordCard(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                    onPressed: () {
                      final words = context.read<WordModel>();

                      words.addLike();
                    },
                    icon: value.pairList.contains(value.currentPair)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    text: "Suka",
                  ),
                  const SizedBox(width: 20),
                  MyButton(
                    onPressed: () {
                      final words = context.read<WordModel>();

                      words.getNext();
                    },
                    icon: Icons.abc,
                    text: "Next Word",
                  )
                ],
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FavoritePage()),
                    );
                  },
                  icon: const Icon(Icons.abc),
                  label: const Text("Kata Favorit")),
            ],
          ),
        ),
      ),
    );
  }
}
