import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Karpuz',
    theme: ThemeData(primarySwatch: Colors.red),
    home: const App(),
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Karpuz")),
    );
  }
}
