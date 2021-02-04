import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Models/quote.dart';
import 'package:flutter_app/widget/quoteCard.dart';

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Quotes"),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.refresh_rounded,
                color: Colors.white70,
                size: 30.0,
              ),
              onPressed: () {
                // setState(() {
                //   quotes.add(quotes);
                // });
              })
        ],
      ),
      body: Column(
        children: quotes
            .map(
              (quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }),
              //children: ,
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 30.0,
        ),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
