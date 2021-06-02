import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'AP Page Navigation',
      home: FirstPage(),
    ),
  );
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Welcome to Page 1'),
        backgroundColor: Colors.deepPurple[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'First Page',
              textScaleFactor: 5,
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
              child: Text('Second Page'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepPurple[400]),
                  elevation: MaterialStateProperty.all(6)),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Page 2'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Second Page',
              textScaleFactor: 5,
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ThirdPage()));
              },
              child: Text('Third Page'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepPurple[400]),
                  elevation: MaterialStateProperty.all(6)),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Page 3'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Third Page',
              textScaleFactor: 5,
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('To the Beginning'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepPurple[400]),
                  elevation: MaterialStateProperty.all(6)),
            ),
          ],
        ),
      ),
    );
  }
}
