import 'package:flutter/material.dart';
import 'package:srtp_app/pages/login.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
              child:MaterialApp(
                title: '百姓生活',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                  primaryColor: Colors.pink,
                ),
                home: Login(),
              ),
    );
  }
}
