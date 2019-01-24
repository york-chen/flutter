import 'package:flutter/material.dart';

class LoginWrap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Login();
  }
}

class Login extends State<LoginWrap> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Container(
            decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
            child: Column(
              children: <Widget>[
                Container(
                    child: Center(
                        child: Image.asset(
                      'assets/images/2.logo.png',
                      fit: BoxFit.fitWidth,
                      width: 200,
                    )),
                    margin: EdgeInsets.only(top: 50)),
                Container(
                    child: Column(children: <Widget>[
                      TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                            hintText: '+86请输入手机号码',
                            prefixIcon: Icon(Icons.people)),
                      ),
                      TextField(
                          autofocus: true,
                          decoration: InputDecoration(
                              hintText: '请输入验证码',
                              prefixIcon: Icon(Icons.change_history)))
                    ]),
                    padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                    margin: EdgeInsets.only(top: 50)),
                Container(
                  child: FlatButton(
                    color: Colors.red,
                    highlightColor: Colors.red[700],
                    colorBrightness: Brightness.dark,
                    splashColor: Colors.grey,
                    child: Text("登录", style: TextStyle(fontSize: 20)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0)),
                    onPressed: () {
                      Navigator.pushNamed(context, 'home');
                    },
                    padding: EdgeInsets.fromLTRB(180, 15, 180, 15),
                  ),
                  margin: EdgeInsets.only(top: 40),
                ),
                Container(
                  child: Center(
                    child: Image.asset('assets/images/7_icon01.png',
                        width: 80, fit: BoxFit.fitWidth),
                  ),
                  margin: EdgeInsets.only(top: 100),
                )
              ],
            ))
      ],
    );
  }
}
