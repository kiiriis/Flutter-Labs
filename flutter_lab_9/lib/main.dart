// Krish Makadia


/*
// Lab 9 : Simple Quotes App

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: EchoList(),
    ));

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);

  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  List<String> quotes = [
    'It is only after that you have lost everything,you are free to do anything\n',
    'Justice shall be served, thy the heavens fall\n',
    'Talent hits a target no one can see, determination hits a target no one else can see\n'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[100],
      appBar: AppBar(
        title: Text('Quotes by Krish'),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}

//
*/

//Code 2
/*
import 'package:flutter/material.dart';

//import 'package:lab8_2/quote.dart';
import 'quote.dart'; // due to same directory file no need path

void main() => runApp(MaterialApp(
  home: EchoList(),
));

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);

  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
/*
List<String> quotes = [
'The truth is realy pure and never simple',
'I see humans but no humanity',
'The time is always right to do what is right'
];
// List<String> author = [];
*/
/* this will create error..because list is now not of string....
List<String> quotes = [
Quote(text: 'The truth is realy pure and never simple',author:
'jignesh1'),
];
*/
  List<Quote> quotes = [
    Quote(text: 'It is only after that you have lost everything,you are free to do anything\n', author: 'Krish Makadia'),
    Quote(author: 'Vimal Makadia', text: 'Justice shall be served, thy the heavens fall\n'),
    Quote(
        text: 'Talent hits a target no one can see, determination hits a target no one else can see\n',
        author: 'Rina Makadia'),
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,
                color: Colors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text('Quotes by Makadia family'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
 */

//Code 3

/*
import 'package:flutter/material.dart';
import 'quote.dart'; // Absolute path
//import 'quote.dart'; // due to same directory file relative path will work
import 'quote_card.dart'; // Relative path

void main() => runApp(MaterialApp(
  home: EchoList(),
));

class EchoList extends StatefulWidget {
  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
/*
List<String> quotes = [
'The truth is realy pure and never simple',
'I see humans but no humanity',
'The time is always right to do what is right'
];
// List<String> author = [];
*/
/* this will create error..because list is now not of string....
List<String> quotes = [
Quote(text: 'The truth is realy pure and never simple',author:
'jignesh1'),
];
*/
  List<Quote> quotes = [
    Quote(text: 'It is only after that you have lost everything,you are free to do anything', author: 'Krish Makadia'),
    Quote(author: 'Vimal Makadia', text: 'Justice shall be served thy the heavens fall'),
    Quote(
        text: 'Fall 1000 times, get back up 1001 times',
        author: 'Rina Makadia'),
  ];

/*
Widget quoteTemplate(quote){
return QuoteCard(quote: quote,);
}
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        children: quotes
            .map((quote) =>
            QuoteCard(
              quote: quote,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                });
              },
            ))
            .toList(),
      ),
    );
  }
}
 */