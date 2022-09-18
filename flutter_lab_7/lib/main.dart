// Krish Makadia


// lab7_1 : INSERTING NETWORK IMAGE
/*
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
// home is property and after : is its value widget.
// Scaffold is widgets built in flutter sdk..Scaffold is one type of
//     layout manager..
  home: HomeScreen(),
));

class HomeScreen extends StatelessWidget {
// const test1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arya Stark'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
          child: Image(
            image: NetworkImage(
                'https://w0.peakpx.com/wallpaper/378/668/HD-wallpaper-not-today-arya-stark-arya-arya-stark-faceless-game-of-thrones-got-no-one-not-today-nottoday-stark-thumbnail.jpg'),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // must required property...
// making change at here to test hot reloading..click --> click
//     me---> Click and ctrl + s
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
*/


/*
// lab7_2 : INSERTING ASSETS IMAGE

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
// home is property and after : is its value widget.
// Scaffold is widgets built in flutter sdk..Scaffold is one type of
//     layout manager..
      home: HomeScreen(),
    ));

class HomeScreen extends StatelessWidget {
// const test1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spider Man'),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
      ),
      body: Center(
          child: Image(
        image: AssetImage('assets/spider.png'),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // must required property...
// making change at here to test hot reloading..click --> click
//     me---> Click and ctrl + s
        child: Text('Click'),
        backgroundColor: Colors.blue[600],
      ),
    );
  }
}
*/

/*

// lab7_3 : INSERTING BUTTONS

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomeScreen(),
    ));

class HomeScreen extends StatelessWidget {
// const test1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BUTTONS WIDGET APP'),
        centerTitle: true,
        backgroundColor: Colors.amber[500],
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Button'),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Colors.red[200],
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.pink[800],
      ),
    );
  }
}
*/


// lab7_4 : INSERTING BUTTONS (New Code)

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomeScreen(),
    ));

class HomeScreen extends StatelessWidget {
// const test1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BUTTONS WIDGET APP'),
        centerTitle: true,
        backgroundColor: Colors.orange[600],
      ),
      body: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: TextButton.icon(
            icon: Icon(
              Icons.photo_camera,
              color: Colors.pinkAccent,
              size: 50.0,
            ),
            label: Text(
              "Gallery",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                letterSpacing: 2.0,
                backgroundColor: Colors.blueAccent,
              ),
              textAlign: TextAlign.start,
            ),
            onPressed: () {},
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[800],
      ),
    );
  }
}

