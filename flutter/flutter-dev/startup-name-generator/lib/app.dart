import 'package:flutter/material.dart';

import 'random_words.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => myApp();
}

myApp() => MaterialApp(
  title: 'Startup Name Generator',
  home: const RandomWords(),
  theme: appTheme(),
);

appTheme() => ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ));
