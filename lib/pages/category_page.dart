import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Doanload.dart';
import 'searchpage.dart';
import 'photopage.dart';

class CategoryPage extends StatefulWidget  {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> with SingleTickerProviderStateMixin{

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
            title: Text("分类"),
            //leading: Icon(Icons.blur_on),
            actions: <Widget>[
            IconButton(
              disabledColor: Colors.white,
              icon:Icon(Icons.search),
              onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context){
                  return SearchPage();
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
                    return PhotoPage();
                  }));
                });
              },
            ),
            Container(
              width: 30.0,
              color: Colors.pink,
              )
            ],
        bottom: TabBar(
          isScrollable: true,
          controller: this._tabController,
          tabs: <Widget>[
            Tab(text: "生活"),
            Tab(text: "动物"),
            Tab(text: "植物"),
            Tab(text: "交通工具"),
            Tab(text: "电子产品"),
            Tab(text: "乐器"),
            Tab(text: "建筑"),
            Tab(text: "蔬菜"),
            Tab(text: "玩具"),
          ],
        ),
      ),

      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Card(
              child: ListView(
                children: <Widget>[
                  ListTile(
                      leading: Image.network( "https://www.itying.com/images/flutter/3.png",
                        fit:BoxFit.cover,
                        height: 60,
                        width: 80 ,),
                      title: Text("生活"),
                      subtitle: Text("笑声会"),
                      trailing: IconButton(
                          icon: IconButton(
                              icon: Icon(Icons.file_download),
                              onPressed: (){
                                setState(() {
                                  Navigator.push(context,MaterialPageRoute(builder:(context){
                                    return DownloadPage();  }
                                  ), );},
                                );
                              }
                          ),
                          onPressed: (){
                            setState(() {
                              Navigator.push(context,MaterialPageRoute(builder:(context){
                                return DownloadPage();  }
                              ), );},
                            );
                          }
                      )
                  ),

                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/3.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/3.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/3.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/3.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/3.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/3.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/3.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/3.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),

                ],
              )
          ),

          Card(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),

                ],
              )
          ),

          Card(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),

                ],
              )
          ),

          Card(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/4.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/4.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/4.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/4.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/4.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/4.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/4.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/4.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/4.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),

                ],
              )
          ),

          Card(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/5.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/5.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/5.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/5.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/5.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/5.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/5.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/5.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/5.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),

                ],
              )
          ),

          Card(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/6.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/6.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/6.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/6.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/6.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/6.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/6.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/6.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/6.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),

                ],
              )
          ),

          Card(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/7.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/7.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/7.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/7.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/7.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/7.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/7.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/7.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/7.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),

                ],
              )
          ),

          Card(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/1.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),

                ],
              )
          ),

          Card(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),
                  ListTile(
                    leading: Image.network( "https://www.itying.com/images/flutter/2.png",
                      fit:BoxFit.cover,
                      height: 60,
                      width: 80 ,),
                    title: Text("生活"),
                    subtitle: Text("笑声会"),
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
                  ),

                ],
              )
          ),

        ],
      ) ,

      //drawer: DrawerPage(),
    );

  }
}
