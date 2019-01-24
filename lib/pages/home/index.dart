import 'package:flutter/material.dart';
import 'package:news/pages/home/home.dart';
class HomeTemp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeContainer();
  }
}
class HomeContainer extends State<HomeTemp>{
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('首页')
      ),
      body: HomeWrap(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/bar_btn01_nor.png')),title: Text(''),backgroundColor: Colors.red),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/bar_btn02_nor.png')),title: Text(''),backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/bar_btn03_nor.png')),title: Text(''),backgroundColor: Colors.black),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/bar_btn04_nor.png')),title: Text(''),backgroundColor: Colors.tealAccent),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/bar_btn05_nor.png')),title: Text(''),backgroundColor: Colors.tealAccent)
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        onTap: _onItemTaped
      )
    );
  }
  void _onItemTaped(int index){
    setState((){
        _selectedIndex = index;
    });
  }
}