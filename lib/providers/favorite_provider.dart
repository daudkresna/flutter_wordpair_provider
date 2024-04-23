import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class WordModel extends ChangeNotifier {
  final _pairList = <WordPair>[];
  var _currentPair = WordPair.random();

  List<WordPair> get pairList => _pairList;
  WordPair get currentPair => _currentPair;

  void addLike() {
    if (_pairList.contains(_currentPair)) {
      _pairList.remove(_currentPair);
    } else {
      _pairList.add(_currentPair);
    }
    notifyListeners();
  }

  void getNext() {
    _currentPair = WordPair.random();
    notifyListeners();
  }

  void removeWord(int index) {
    _pairList.remove(_pairList[index]);
    notifyListeners();
  }
}
