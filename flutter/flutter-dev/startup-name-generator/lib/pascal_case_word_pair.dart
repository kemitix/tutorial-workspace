import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

const biggerFont = TextStyle(fontSize: 18.0);

Text pascalCaseWordPair(WordPair pair) => Text(
  pair.asPascalCase,
  style: biggerFont,
);
