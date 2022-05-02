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
      showModalBottomSheet(context : inContext,
          builder : (BuildContext inContext) {
            return new Column(
                mainAxisSize : MainAxisSize.min,
                children : [
                  Text("What's your favorite pet?"),
                  FlatButton(child : Text("Dog"),
                    onPressed : () { Navigator.of(inContext).pop(); },
                  ),
                  FlatButton(child : Text("Cat"),
                    onPressed : () { Navigator.of(inContext).pop(); },
                  ),
                  FlatButton(child : Text("Ferret"),
                      onPressed : () { Navigator.of(inContext).pop(); }
                  )
                ]
            );
          }
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