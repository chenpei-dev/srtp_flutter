import 'package:flutter/material.dart';
import 'login.dart';

class DrawerPage extends StatefulWidget{
  DrawerPage({Key key}) : super(key: key);
  State<StatefulWidget> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5.0,
      child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text("起风了"),
                    accountEmail: Text("110@qq.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.itying.com/images/flutter/1.png"),
                    ),
                  ),
                ),
              ],
            ),

            ListTile(
              leading: CircleAvatar(
                radius: 15.0,
                child: Icon(Icons.account_box,
                  size: 20.0,),
              ),
              title: Text("我的账户",
                style: TextStyle(
                    fontSize: 13.0
                ),),
            ),
            Divider(),

            ListTile(
              leading: CircleAvatar(
                radius: 15.0,
                child: Icon(Icons.home),
              ),
              title: Text("我的首页",
                  style: TextStyle(
                      fontSize: 13.0
                  )),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                radius: 15.0,
                child: Icon(Icons.settings),
              ),
              title: Text("我的设置",
                  style: TextStyle(
                      fontSize: 13.0
                  )),
            ),

            Divider(),
            RaisedButton(
              child: Text("退出"),
              color: Colors.white,
              elevation: 0,
              onPressed:(){
                setState(() {
                  Navigator.of(context).pushAndRemoveUntil(
                      new MaterialPageRoute(builder: (context) => new Login()),
                          (route) => route == null);
                });
              },
            ),
          ]
      ),
    );

  }
}