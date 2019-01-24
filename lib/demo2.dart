import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
void main(){
  runApp(MaterialApp(
    title: 'demo2',
    theme: ThemeData.light(),
    home: Scaffold(
      appBar: AppBar(
        title: Text('demo2')
      ),
      body: new PageStateController(),
    )
  ));
}
class PageStateController extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Page();
  }
}
class Page extends State<PageStateController> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(
        children: <Widget>[
          Center(child: Column(
              children: <Widget>[
                Text('you have pushed the btn this many times'),
                Text('$counter')
              ],
              mainAxisAlignment: MainAxisAlignment.center
          )),
          Positioned(
            bottom: 50,
            right: 50,
            child: GestureDetector(
              child: Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(child: Text('+',style: TextStyle(color: Colors.white)))
              ),
              onTap: (){
//                showDialog(context: context,builder:(_){
//                  return AlertDialog(
//                    title:Text('这是标题栏'),
//                    content:Text('这是内容主题'),
//                    actions: <Widget>[
//                      new FlatButton(child:new Text("取消"), onPressed: (){
//                        Navigator.pop(context, false);
//                      }),
//                      new FlatButton(child:new Text("确定"), onPressed: (){
//                        Navigator.pop(context, true);
//                      })
//                    ],
//                  );
//                });
              setState(() {
                counter++;
              });
              },
            )
          )
        ],
      )
    );
  }
}