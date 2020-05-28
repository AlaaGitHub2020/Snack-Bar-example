import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomeState();
  }
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Show Snack Bar'),
      ),
      body: Builder(
        builder: (BuildContext context) => Center(
          child: Container(
            child: RaisedButton(
              color: Colors.red,
              child: Text(
                "show SnackBar ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
              onPressed: () {
                _showSnackBar(context, 'Hello from the SnackBar');
              },
            ),
          ),
        ),
      ),
    );
  }

  //if i run the app now it will show an error because we need a builder to
  // show the snack bar in the body of Scaffold
  // I'll show you that
  //so that to solve this error we need builder like I'll do in the next step
  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
        ),
      ),
      backgroundColor: Colors.red,
      duration: Duration(
        seconds: 3,
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
