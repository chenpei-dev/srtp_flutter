import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'index_page.dart';
import 'login.dart';
import 'package:dio/dio.dart';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController password_input_controller = TextEditingController();
  TextEditingController user_acount_input_controller = TextEditingController();
  String showtext = "开始登陆";


  @override
  Widget build(BuildContext context) {

    //TODO update what details you want
    //test feild state
    String email = "";
    String password = "";
    String name = "";
    String city = "";
    String phonenumber = "";

    //for showing loading
    bool loading = false;

    // this below line is used to make notification bar transparent
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            //TODO update this
            'assets/background.jpg',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(.1),
                    ])),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 27.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  //TODO update this
                  'Join Mr BookWorm!',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 22,
                              width: 22,
                              child: Icon(
                                Icons.email,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
                        )),
                    Container(
                        height: 50,
                        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                        child: TextField(
                          controller: user_acount_input_controller,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: 'Email',
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Colors.white70
                              )
                          ),
                          style: TextStyle(fontSize: 16,
                              color: Colors.white),
                        )),
                  ],
                ),
                //city
                SizedBox(
                  height: 16,
                ),
                //TODO remove unwanted containers
                /*
                Stack(
                  children: <Widget>[
                    Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 22,
                              width: 22,
                              child: Icon(
                                Icons.home,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
                        )),
                    Container(
                        height: 50,
                        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: 'City',
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Colors.white70
                              )
                          ),
                          style: TextStyle(fontSize: 16,
                              color: Colors.white),
                        )),
                  ],
                ),
                //phonenumber
                SizedBox(
                  height: 16,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 22,
                              width: 22,
                              child: Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
                        )),
                    Container(
                        height: 50,
                        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: 'Mobile Number',
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Colors.white70
                              )
                          ),
                          style: TextStyle(fontSize: 16,
                              color: Colors.white),
                        )),
                  ],
                ),
                //college
                SizedBox(
                  height: 16,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 22,
                              width: 22,
                              child: Icon(
                                Icons.school,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
                        )),
                    Container(
                        height: 50,
                        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: 'College',
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Colors.white70
                              )
                          ),
                          style: TextStyle(fontSize: 16,
                              color: Colors.white),
                        )),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),*/
                Stack(
                  children: <Widget>[
                    Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 22,
                              width: 22,
                              child: Icon(
                                Icons.vpn_key,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
                        )),
                    Container(
                        height: 50,
                        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                        child: TextField(
                          controller: password_input_controller,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                color: Colors.white70
                            ),
                          ),
                          style: TextStyle(fontSize: 16,
                              color: Colors.white),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    signup_action(context);
                  },
                  child:Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: Center(
                            child: Text(
                              '注册',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black),
                            )),
                      ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Center(
                          child: Text(
                            "已经有账户",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white),
                          )),
                    ),

                InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        new MaterialPageRoute(builder: (context) => new Login()
                        ), (route) => route == null);
                  },
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Center(
                        child: Text(
                          "登陆",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }


  void signup_action(BuildContext Context){
    print("开始註冊。。。。。。。。。");
    if( user_acount_input_controller.text.toString() == "" ){
      showDialog(
          context:  Context,
          builder: (context) => AlertDialog(title:Text("名字不能为空"))
      );
    }
    else
    if( password_input_controller.text.toString() == "" ){
      showDialog(
          context:  Context,
          builder: (context) => AlertDialog(title:Text("密码不能为空"))
      );
    }

    else {

      gethttp(user_acount_input_controller.text.toString(),password_input_controller.text.toString()).then((val){
        setState((){
          if( val.toString().compareTo("create successful!")==0 ) {
            this.showtext ="create successful!!";
            print(this.showtext);

            Navigator.of(context).pushAndRemoveUntil(
                new MaterialPageRoute(builder: (context) => new Login()
                ), (route) => route == null);

          }
          else if(val.toString().compareTo("user already exit!")==0  ){
            showDialog(
                context:  Context,
                builder: (context) => AlertDialog(title:Text("用户名已经存在！"))
            );
          }



        }) ;
      });



      /*
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            new MaterialPageRoute(builder: (context) => new IndexPage()
            ), (route) => route == null);
      });*/
    }
  }


  Future gethttp(String name,String pwd) async{
    try{
      Response response;
      var data = {
        "name":name,
        "pwd":pwd
      };
      response = await Dio().post('http://zjuqifengle.uicp.top/user/signup',
          queryParameters: data
      );
      if( response.statusCode == 200 )print("上传成功");
      else print("失败");

      print(response);
      return response;

    }
    catch(e){
      return print(e);
    }
  }
}