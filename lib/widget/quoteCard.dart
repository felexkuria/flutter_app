import 'package:flutter/material.dart';
import 'package:flutter_app/Models/quote.dart';

class QuoteCard extends StatelessWidget {
  QuoteCard({this.quote, @required this.delete});

  final Quote quote;
  final Function delete;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
            SizedBox(
              height: 6.0,
            ),
            FlatButton.icon(
              icon: Icon(
                Icons.delete,
                size: 30.0,
              ),
              onPressed: delete,
              label: Text("delete"),
            )
          ],
        ),
      ),
    );
  }
}
