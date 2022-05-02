import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home : Scaffold(body : Home()));
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext inContext) {
    Future _showIt() {
      Scaffold.of(inContext).showSnackBar(
          SnackBar(
              backgroundColor : Colors.red,
              duration : Duration(seconds : 5),
              content : Text("I like pie!"),
              action : SnackBarAction(
                  label : "Chow down",
                  onPressed: () {
                    print("Gettin' fat!");
                  }
              )
          )
      );
    }
    return Scaffold(
        body : Center(
            child : RaisedButton(
                child : Text("Show it"),
                onPressed : _showIt
            )
        )
    );
  }
}