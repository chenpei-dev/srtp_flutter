import 'package:flutter/material.dart';


class DownloadPage extends StatefulWidget{
  DownloadPage({Key key}) : super(key: key);
  State<StatefulWidget> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> with  SingleTickerProviderStateMixin{

  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(
      vsync :this,
      length: 9,
    );
    _tabController.addListener((){
      print(_tabController.index);
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Downloading....."),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 24.0,),
                Container(
                  height: 100.0,
                  width: 300.0,
                  color: Colors.white,
                  child: Image.asset("images/1.JPG",
                      fit: BoxFit.fitWidth),
                ),
                SizedBox(width: 24.0,),
              ],
            )
          ],
        )
    );
  }
}