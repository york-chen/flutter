import 'package:flutter/material.dart';

class HeadquartersWrap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Headquarters();
  }
}

class Headquarters extends State<HeadquartersWrap> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Container(
            child: Image.asset('assets/images/2.banner.png',
                height: 210, fit: BoxFit.fitHeight)),
        Container(
            padding: EdgeInsets.all(10),
            child: Column(
                children: <Widget>[
                  buildNoneImgNews(),
                  buidOneImgNews(),
                  buildThreeImgNews()
                ]))
      ],
    );
  }

  Widget buildNoneImgNews() {
    return Column(children: <Widget>[
      Text(
        '宜宾学院成中集团贫困大学生圆梦救助金发放仪式',
        style: TextStyle(height: 1.2, fontWeight: FontWeight.w500),
      ),
      Container(
          margin: EdgeInsets.only(top: 5, bottom: 5),
          child: Row(children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 1,
                        style: BorderStyle.solid)),
                child: Text('置顶',
                    style: TextStyle(color: Theme.of(context).primaryColor)),
                padding: EdgeInsets.only(left: 4, right: 4)),
            Container(
                margin: EdgeInsets.only(left: 10),
                child: Text('刚刚', style: TextStyle(color: Colors.grey)))
          ])),
      Container(margin: EdgeInsets.only(bottom: 10), child: Divider())
    ],crossAxisAlignment: CrossAxisAlignment.start);
  }

  Widget buidOneImgNews() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('集团成功获评2018年"四川民营企业100强"'),
              Row(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 1,
                              style: BorderStyle.solid)),
                      child: Text('最新',
                          style: TextStyle(color: Theme.of(context).primaryColor)),
                      padding: EdgeInsets.only(left: 4, right: 4)),
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text('1小时前', style: TextStyle(color: Colors.grey)))
                ],
              )
            ],
          ),
          flex: 3
        ),
        Expanded(
          child: Image.asset('assets/images/2.img03.png'),
        )
      ]
    );
  }
  Widget buildThreeImgNews(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('宜宾市政府驻成都办事处副主任黄仁泽一行到公司考察'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset('assets/images/2.img02.png',width: 127,fit: BoxFit.fitWidth),
            Image.asset('assets/images/2.img03.png',width: 127,fit: BoxFit.fitWidth),
            Image.asset('assets/images/2.img04.png',width: 127,fit: BoxFit.fitWidth)
          ],
        )
      ],
    );
  }
}
