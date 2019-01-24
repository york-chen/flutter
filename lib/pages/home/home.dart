import 'package:flutter/material.dart';
import 'package:news/pages/home/headquarters.dart';
class HomeWrap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home();
  }
}

class Home extends State<HomeWrap>  with TickerProviderStateMixin {
  TabController _tabController;
  void initState(){
    super.initState();
     _tabController = new TabController(length: 5, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 15),
              height: 35,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Image.asset('assets/images/2.logo.png',
                          height: 25, fit: BoxFit.fitHeight),
                      flex: 2),
                  Expanded(
                      child: TextField(
                          autofocus: false,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(0),
                              prefixIcon: ImageIcon(AssetImage(
                                  'assets/images/2.icon_search.png')),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide.none),
                              fillColor: Color(0xFFF0F0F0))),
                      flex: 5),
                  Expanded(
                      child: Image.asset('assets/images/2.icon02.png',
                          height: 25, fit: BoxFit.fitHeight),
                      flex: 1)
                ],
              )),
          TabBar(
            labelColor: Colors.grey,
            indicatorColor: Theme.of(context).primaryColor,
            labelPadding: EdgeInsets.only(left: 25,right: 25),
            tabs: <Widget>[
              Tab(text: '总部'),
              Tab(text: '房产'),
              Tab(text: '医疗'),
              Tab(text: '物业'),
              Tab(text: '酒店')
            ],
              isScrollable: true,
            controller: _tabController,
          ),
          Flexible(
            child: TabBarView(
                children: <Widget>[
                  HeadquartersWrap(),
                  Text('房产'),
                  Text('医疗'),
                  Text('物业'),
                  Text('酒店')
                ],
                controller: _tabController
            )
          ),
        ],
      ),
    );
  }
}
