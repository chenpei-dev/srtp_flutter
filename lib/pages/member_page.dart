import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'login.dart';



class MemberPage extends StatefulWidget {
  @override
  _MemberPageState createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {


  final String host="https://jsonplaceholder.typicode.com/posts";
  List datas;
  gatData() {
    return http.get(host);
  }

  TextEditingController idinput = TextEditingController();
  TextEditingController nameinput = TextEditingController();
  TextEditingController pwdinput = TextEditingController();
  String showtext = "欢迎来到人好人间";

  @override
  Widget build(BuildContext context) {
    this.gatData();

    return Scaffold(
        body: ListView(
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(10),
                child: Column(
                    children: <Widget>[
                      /* AspectRatio(
                    aspectRatio:16/9,
                    child: Image.network("https://www.itying.com/images/flutter/1.png",
                      fit: BoxFit.cover,),
                  ),*/
                      ListTile(
                        title: Text("昵称：起风了",
                          style: TextStyle(
                              fontSize: 15.0
                          ),),
                        subtitle: Text("积分：100",
                          style: TextStyle(
                              fontSize: 13.0
                          ),),
                        leading:CircleAvatar(
                          backgroundImage:NetworkImage("https://www.itying.com/images/flutter/1.png"),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),

                      ListTile(
                        title: Text("账号信息"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),

                      ListTile(
                        title: Text("保密手机"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),

                      ListTile(
                        title: Text("更新相关"),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: (){
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          });
                        },
                      ),

                      ListTile(
                        title: Text("退出登录"),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: (){
                          setState(() {
                            Navigator.of(context).pushAndRemoveUntil(
                                new MaterialPageRoute(builder: (context) => new Login() ),
                                    (route) => route == null);
                          });
                        },
                      ),
                    ]
                ),
              ),

              FutureBuilder(future: gatData(), builder: (context,snap){
                if(!snap.hasData){
                  return Container(
                    color: Colors.blue,
                  );
                }
                var datas = jsonDecode(snap.data.body);

                return ListView.builder(
                    itemCount: datas.length,
                    itemBuilder: (context,idx){
                      var data= datas[idx];
                      return ListTile(
                        title: Text(data["title"]),
                        subtitle: Text(data["body"]),
                      );
                    });
              },),

              SingleChildScrollView(  //防止键盘弹出的时候超出边缘
                child:Container(
                  child: Column(
                    children: <Widget>[
                      //idinput
                      Container(
                        height: 50,
                      ),
                      TextField(
                        controller: idinput,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all((10)),
                          labelText: 'inputid',
                        ),
                        autofocus: false,
                      ),
                      //nameinnput
                      TextField(
                        controller: nameinput,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all((10)),
                          labelText: 'input your name',
                        ),
                        autofocus: false,
                      ),

                      //pwdinput
                      TextField(
                        controller: pwdinput,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all((10)),
                          labelText: 'input your password',
                        ),
                        autofocus: false,
                      ),

                      RaisedButton(
                        onPressed: (){
                          choice_action();
                        },
                        child: Text('选择完毕'),
                      ),

                      Text(
                        showtext,
                        overflow: TextOverflow.ellipsis, //超出时显示省略号
                        maxLines: 1,
                      )
                    ],
                  ),
                ),
              )
            ]
        ),



    );

  }





  void choice_action(){
    print("开始选择。。。。。。。。。");
    if( idinput.text.toString() == "" ){
      showDialog(
          builder: (context) => AlertDialog(title:Text("id不能为空"))
      );
    }
    else
      if( nameinput.text.toString() == "" ){
        showDialog(
            builder: (context) => AlertDialog(title:Text("name不能为空"))
        );
      }
      else
        if (pwdinput.text.toString() == "" ){
          showDialog(
              builder: (context) => AlertDialog(title:Text("pwd不能为空"))
          );
        }
    else {
       gethttp(int.parse(idinput.text.toString()), nameinput.text.toString(),pwdinput.text.toString()).then((val){
         setState((){
           this.showtext = val.toString();
         }) ;
      });

    }
  }


  Future gethttp(int id,String name,String pwd) async{
    try{
      Response response;
      var data = {"id":id,
                  "name":name,
                  "pwd":pwd};
      response = await Dio().post('http://zjuqifengle.uicp.top/student/postinsert',
        queryParameters: data
      );
      print(response);
      return response;

    }
    catch(e){
      return print(e);
    }
  }


}





