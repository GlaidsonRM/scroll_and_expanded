import 'package:flutter/material.dart';
import 'package:scroll_and_expanded/scroll_and_expanded.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scroll And Expanded',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScrollAndExpandedPage(),
    );
  }
}

class ScrollAndExpandedPage extends StatelessWidget {
  const ScrollAndExpandedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll And Expanded'),
        centerTitle: true,
      ),
      body: ScrollAndExpandedVertical(
        children: [
          Container(height: 100,),
        ],
      ),
    );
  }
}

