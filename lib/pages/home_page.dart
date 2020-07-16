import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'login.dart';
import 'package:srtp_app/config/listdata.dart';
import 'Doanload.dart';
import 'photopage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController typeController = TextEditingController();
  String showtext = "欢迎来到人好人间";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("首页"),
          actions: <Widget>[
            IconButton(
              icon:Icon(Icons.camera),
              onPressed: (){
                setState(() {
                  Navigator.push(context,MaterialPageRoute(builder:(context){
                    return PhotoPage();
                  }));
                });
              },
             ),
          ],
        ),
        body: ListView(
          children: listdata.map((value){
            return ListTile(
              leading: Image.network(  value["imageurl"],
                height: 60,
                width: 80 ,),
              title: Text(value["title"]),
              subtitle: Text(value["author"]),
              trailing: IconButton(
                  icon: Icon(Icons.file_download),
                  onPressed: (){
                    setState(() {
                      Navigator.push(context,MaterialPageRoute(builder:(context){
                        return DownloadPage();  }
                      ), );},
                    );
                  }
              ),
            );
          }).toList(),

        )
    );
  }







}




