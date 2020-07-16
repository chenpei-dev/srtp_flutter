import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'searchpage.dart';
import 'photopage.dart';


class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  var index=0;
  List measslist=[
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        ListTile(
          title: Text('关于数据库文具更新的通知'),
        ),
        SizedBox(height: 5,),
        ListTile(
          title: Text('关于数据库植物更新的通知'),
        ),
        ListTile(
          title: Text('关于数据库动物更新的通知'),
        ),
        ListTile(
          title: Text('关于数据库书籍更新的通知'),
        )
      ],
    ),

    Column(
      children: <Widget>[
        ListTile(
          title: Text('记录1'),
        ),
        ListTile(
          title: Text('记录2'),
        ),
        ListTile(
          title: Text('记录3'),
        ),
        ListTile(
          title: Text('记录4'),
        )


      ],
    ),

    Column(
      children: <Widget>[
        ListTile(
          title: Text('账号安全'),
        ),
        ListTile(
          title: Text('版本更新'),
        ),
        ListTile(
          title: Text('上传成功提醒'),
        ),
        ListTile(
          title: Text('积分升级提醒'),
        )

      ],
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text("动态"),
      //leading: Icon(Icons.blur_on),
        actions: <Widget>[
            IconButton(
                disabledColor: Colors.white,
                icon:Icon(Icons.search),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context){
                    return PhotoPage();
                    }));
                },
            ),
            SizedBox(width: 80.0,),
            IconButton(
              disabledColor: Colors.white,
              icon: Icon(Icons.camera_alt),
              onPressed: (){
                setState(() {
                  Navigator.push(context,MaterialPageRoute(builder:(context){
                    return SearchPage();
                  }));
                });
              },
            ),
            Container(
            width: 30.0,
            color: Colors.pink,
            )
            ],
        ),
        body:  Container(
          child:Column(
            children:<Widget>[
              Row(
              children: <Widget>[
                SizedBox(width: 7.5,),
                Container(
                width: MediaQuery.of(context).size.width/3-10,//当前屏幕宽度除以三
                child:RaisedButton(
                  child: Text("通知"),
                  onPressed: (){
                    setState(() {
                      this.index=0;
                      print(index);
                    });
                },
              ),
            ),
                SizedBox(width: 7.5,),
                Container(
                width: MediaQuery.of(context).size.width/3-10,//当前屏幕宽度除以三
                child:RaisedButton(
                  child: Text("记录"),
                    onPressed: (){
                      setState(() {
                          this.index=1;
                          print(index);
                        });
                    },
                  ),
                ),
              SizedBox(width: 7.5,),
              Container(
                  width: MediaQuery.of(context).size.width/3-10,//当前屏幕宽度除以三
                    child:RaisedButton(
                    child: Text("私信"),
                    onPressed: (){
                      setState(() {
                        this.index=2;
                        print(index);
                      });
                    },
                  ),
              ),
              SizedBox(width: 7.5,),
              ],
          ),

          this.measslist[this.index],

          ]
       ),
      ),
    );

  }








  void gethttp() async{
    try{
      Response response;
      response = await Dio().get("https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian?name=大胸");
      return print(response);
    }catch(e){
      return print(e);
    }
  }

}


