import 'package:flutter/material.dart';
void main(){
  runApp(new App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title:'homePage',
      theme: new ThemeData(primaryColor: Colors.blue),
      home:new Scaffold(
        appBar: new AppBar(title: new Text('首页')),
        body: ListView(
          children: <Widget>[
            _buildBanner(),
            _buildArticleTitle(),
            _buildIconsArea(context),
            _buildArticleContent()
          ],
        )
      ) ,
    );
  }
  Widget _buildBanner(){
    return new Container(
      child: new Image.asset('asset/temp.jpg',height: 200,fit: BoxFit.cover),
      margin: const EdgeInsets.only(bottom: 15)
    );
  }
  Widget _buildArticleTitle(){
    return new Container(
      padding: EdgeInsets.all(30.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  child: Text('Oeschine Lake Campground',style: new TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16.0)),
                  padding: EdgeInsets.only(bottom: 8)
                ),
                Text('Kandersteg,Switzerland',style: new TextStyle(fontSize: 16,color: Colors.grey[500]))
              ],
              crossAxisAlignment: CrossAxisAlignment.start
            ),
          ),
          Icon(Icons.star,color: Colors.red),
          Text('41')
        ],
      )
    );
  }
  Widget _buildIconsArea(BuildContext ctx){
    return Container(
      padding: EdgeInsets.only(left: 40,right: 40),
      child: Row(
        children: <Widget>[
          _buildIcon(Icons.call,'CALL',ctx),
          _buildIcon(Icons.near_me,'ROUTE',ctx),
          _buildIcon(Icons.share,'SHARE',ctx)
        ]
      ),
    );
  }
  Widget _buildIcon(IconData icon,String txt,BuildContext ctx){
    Color color = Theme.of(ctx).primaryColor;
    return Expanded(
        child: Column(
            children: <Widget>[
              Icon(icon,color: color,size: 30),
              Text(txt,style: TextStyle(color: color))
            ]
        )
    );
  }
  Widget _buildArticleContent(){
    return Container(
      padding: EdgeInsets.all(30),
      child: Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',style: TextStyle(fontSize: 16))
    );
  }
}