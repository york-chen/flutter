import 'package:flutter/material.dart';
import 'package:news/pages/login/login.dart';
class LoginContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('登录')),
      body: LoginWrap(),
    );
  }
}