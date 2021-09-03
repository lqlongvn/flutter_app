import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
    return Scaffold( // Scaffold đang là cha của MyButtonWidget
      body: Center(
        child: MyButtonWidget(),
      ),
    );
  }
}
class MyButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) { // từ context của MyButtonWidget sẽ tìm được widget Scaffold cha gần nhất
    return FlatButton(
      child: Text('show snackbar'),
      color: Colors.pink,
      onPressed: () {
        final snackBar = SnackBar(content: Text('Lỗi không thể truy cập bài viết này vì thấy hay mà không vote'));
        Scaffold.of(context).showSnackBar(snackBar); // truyền vào context của MyButtonWidget
      },
    );
  }
}

