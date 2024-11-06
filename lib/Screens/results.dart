
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final bool results;

  // Constructor accepting the argument
  ResultsPage({
    Key? key,
    required this.results,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Results')),
      body: Center(
        child: results
        ? const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check,
              size: 200,
              color: Colors.green,
            ),
            Text("It is a palindrome."),
          ],
        )
        : const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.close,
              size: 200,
              color: Colors.red,
            ),
            Text("It is a NOT palindrome."),
          ],
        )
        ),
      );
  }
}