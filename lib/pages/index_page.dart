import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dongtai.dart';
import 'home_page.dart';
import 'category_page.dart';
import 'member_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> Bottom=[
    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.home),
      title: Text('首页'),
    ),

    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.search),
      title: Text('分类'),
    ),

    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.mail_solid),
      title: Text('动态'),
    ),

    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.profile_circled),
      title: Text('我'),
    ),

  ];

  final List tapbody=[
    HomePage(),
    CategoryPage(),
    CartPage(),
    MemberPage()
  ];

  int  currentindex=0;
  var currenPage;

  @override
  void initState() {
    // TODO: implement initState
    currenPage = tapbody[currentindex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(244, 245, 245, 1 ),
      body: this.currenPage,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        items: Bottom,
        onTap: (index){
          setState(() {
            this.currentindex = index;
            this.currenPage=tapbody[currentindex];
          });
        },
      ),
    );

  }


}
