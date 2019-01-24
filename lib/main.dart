import 'package:flutter/material.dart';
import 'package:news/pages/login/index.dart';
import 'package:news/pages/home/index.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'news',
      theme: ThemeData(
          primaryColor: Colors.red,
          backgroundColor: Colors.white,
          hintColor: Colors.grey[200], //定义下划线颜色
          inputDecorationTheme: InputDecorationTheme(
              labelStyle: TextStyle(color: Colors.grey), //定义label字体样式
              hintStyle:
                  TextStyle(color: Colors.grey, fontSize: 14.0) //定义提示文本样式
              )),
      routes: {"home": (context) => HomeTemp()},
      home: LoginContainer(),
    );
  }
}
