import 'package:flutter/material.dart';

main(){
  print("Hi Long, Hello World");
  int myNumber;
  print(myNumber);
}


// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Builder( // widget Builder wrap widget FlatButton
          // sử dụng thuộc tính builder
          // truyền vào 1 biến hàm có type: Widget Function(BuildContext context)
          builder: (context) => FlatButton(
            child: Text('show snackbar'),
            color: Colors.pink,
            onPressed: () {
              final snackBar = SnackBar(content: Text('Lỗi không thể truy cập bài viết này vì thấy hay mà không vote'));
              Scaffold.of(context).showSnackBar(snackBar);
            },
          ),
        ),
      ),
    );
  }
}

