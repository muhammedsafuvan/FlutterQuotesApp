import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Prophet Muhammad (PBUH)',text:'The best among you is the one who doesn’t harm others with his tongue and hands.' ),
    Quote(author: 'Walt Disney',text:'The best way to get started is to quit talking and begin doing.' ),
    Quote(author: 'Winston Churchill',text: 'The pessimist sees difficulty in every opportunity. The optimist sees opportunity in every difficulty.'),

  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        ),
    );
  }
}

