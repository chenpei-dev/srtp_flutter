import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:io';


class SearchPage extends StatefulWidget{
  State<StatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController typeController = TextEditingController();
  String testText="输入成功";

  String name = 'test';
  int id = 0;
  String pwd = 'test';
  String result ='test';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              controller: typeController,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  labelText: '密码'
              ),
              autofocus: false,
            ),
            TextField(

            ),
            RaisedButton(
              child: Icon(Icons.search,
                size: 20.0,),
              onPressed: (){
                print("开始输入数据集类型");
                if(typeController.text.toString()==''){
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(title:  Text("输入不能为空"),)
                  );
                }else
                {
                  setState(() {
                    testText = typeController.text.toString();
                  });
                }
              },
            ),

            RaisedButton(
              child: Text("获取全部信息"),
              onPressed: (){
                setState(() {
                  _getalltvs();
                });
              },
            ),

            Text(this.name,),
            Text(this.result),
            Text(testText),
          ],
        ),
      ),
    );
  }

  Future getHttp (String typeText ) async{
    try{
      Response response;
      var data= {"name":typeText};
      response = await Dio().get("https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian",
          queryParameters: data);
      return response.data;

    }catch(e){
      print(e);
    }
  }

  _getalltvs() async{
    var url = 'http://2k88r29309.qicp.vip/tvs/selectbyname/cp';
    var httpClient = new HttpClient();

    try{
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      //if ( response.statusCode == HttpStatus.OK){
      var json = await response.transform((utf8.decoder)).join();
      var data = jsonDecode(json);
      this.name = data['name'];
      this.id = data['id'];
      this.pwd = data['pwd'];
      this.result = data;
      // }
      //else {
      //  this.result = 'error get infomation';
      //}
    }
    catch(exception){
      this.result ='failed to connet net';
    }
  }
}
