import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes = [
    'The best among you is the one who doesn’t harm others with his tongue and hands.',
    'The best way to get started is to quit talking and begin doing.',
    'The pessimist sees difficulty in every opportunity. The optimist sees opportunity in every difficulty.',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Awesome quotes'),
        centerTitle: true,
        backgroundColor: Colors.indigo[800],
      ),
      body: Column(
        children: quotes.map((quote) => Text(quote)).toList(),
        ),
    );
  }
}
