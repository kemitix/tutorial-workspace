import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

import 'pascal_case_word_pair.dart';

Route<void> favouritesPage(Set<WordPair> saved) => MaterialPageRoute<void>(
  builder: (context) {
    final tiles = saved.map(
          (pair) {
        return ListTile(
          title: pascalCaseWordPair(pair),
        );
      },
    );
    final divided = tiles.isNotEmpty
        ? ListTile.divideTiles(context: context, tiles: tiles).toList()
        : <Widget>[];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Suggestions'),
      ),
      body: ListView(children: divided),
    );
  },
);

