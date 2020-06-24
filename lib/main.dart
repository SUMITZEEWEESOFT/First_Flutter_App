import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      home: HomePage(),
      theme: ThemeData(
          primarySwatch: Colors.teal,
          accentColor: Colors.red,
          brightness: Brightness.light),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mytext = "text in children-column-child-center-child-container";
  void _changetext() {
    setState(() {
      if (mytext.startsWith("t")) {
        mytext =
            "Now the text is change and it is changing by if-else statment";
      } else {
        mytext = "text in children-column-child-center-child-container";
      }
    });
  }

  Widget _bodywidget() {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "$mytext",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            RaisedButton(
              child: Text(
                "Change",
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              onPressed: _changetext,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Home Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: _bodywidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _changetext,
      ),
    );
  }
}
