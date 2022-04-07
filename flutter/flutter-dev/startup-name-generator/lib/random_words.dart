import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

import 'favourites_page.dart';
import 'pascal_case_word_pair.dart';

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

typedef StateSetter = void Function(void Function());

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = <WordPair>{};

  @override
  Widget build(BuildContext context) => myAppScaffold(Navigator.of(context), _saved, _suggestions, setState);
}

Scaffold myAppScaffold(NavigatorState navigator, Set<WordPair> saved, List<WordPair> suggestions, StateSetter setState) => Scaffold(
  appBar: myAppBar(navigator, saved),
  body: randomWordsList(suggestions, saved, onTapHandler(setState, saved)),
);

AppBar myAppBar(NavigatorState navigator, Set<WordPair> saved) => AppBar(
  title: const Text('Startup Name Generator'),
  actions: [
    viewSavedButton(navigator, saved)
  ],
);

WordPairOnTap onTapHandler(StateSetter setState, Set<WordPair> saved) =>
        (WordPair pair, bool alreadySaved) =>
        setState(() =>
        alreadySaved
            ? saved.remove(pair)
            : saved.add(pair));

Widget viewSavedButton(NavigatorState navigator, Set<WordPair> saved) => IconButton(
  icon: const Icon(Icons.list),
  onPressed: () => navigator.push(favouritesPage(saved)),
  tooltip: 'Saved Suggestions',
);

typedef WordPairOnTap = void Function(WordPair pair, bool alreadySaved);

ListView randomWordsList(List<WordPair> suggestions, Set<WordPair> saved,
    WordPairOnTap onTap) => ListView.builder(
    padding: const EdgeInsets.all(16.0),
    itemBuilder: (_, i) => wordPairListItem(i, suggestions, saved, onTap));

Widget wordPairListItem(int i, List<WordPair> suggestions, Set<WordPair> saved, WordPairOnTap onTap) {
  if (i.isOdd) return const Divider();
  final index = i ~/ 2;
  ensureSuggestions(index, suggestions);
  final wordPair = suggestions[index];
  final isSaved = saved.contains(wordPair);
  return wordPairSuggestion(wordPair, isSaved, onTap);
}

void ensureSuggestions(int index, List<WordPair> suggestions) {
  if (index >= suggestions.length) {
    suggestions.addAll(generateWordPairs().take(10));
  }
}

Widget wordPairSuggestion(WordPair pair, bool isSaved, WordPairOnTap onTap) =>
    ListTile(
      title: pascalCaseWordPair(pair),
      trailing: isSavedIcon(isSaved),
      onTap: () => onTap(pair, isSaved),
    );

Icon isSavedIcon(bool isSaved) => Icon(
  isSaved ? Icons.favorite : Icons.favorite_border,
  color: isSaved ? Colors.red : null,
  semanticLabel: isSaved ? 'Removed from saved' : 'Save',
);
