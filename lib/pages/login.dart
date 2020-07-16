import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'register.dart';
import 'index_page.dart';
import 'package:dio/dio.dart';
import 'verifycode.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  TextEditingController password_input_controller = TextEditingController();
  TextEditingController user_acount_input_controller = TextEditingController();
  String showtext = "开始登陆";

  @override
  Widget build(BuildContext context) {

    //test feild state
    String email = "";
    String password = "";
    //for showing loading

    // this below line is used to make notification bar transparent
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return   Scaffold(
                          body: //SingleChildScrollView(
                            //physics: BouncingScrollPhysics(),
                            //child:
                            Stack(
                                children: <Widget>[
                                  Image.asset(
                                    //TODO update this
                                    'assets/background.jpg',
                                    fit: BoxFit.fill,
                                    height: double.infinity,
                                    width: double.infinity,
                                  ),
                                  Container(
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
                                    padding: EdgeInsets.all(0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          '欢迎登陆',
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
                                          'srtp team copyright',
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
                                                      hintText: 'account',
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
                                                    hintText: 'password',
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
                                            login_action(context);
                                            /*Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => Verify()),
                                            );*/
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
                                                "Don't have an account",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white),
                                              )),
                                        ),

                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => Register()),
                                            );
                                          },
                                          child: Container(
                                            height: 30,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(50)
                                            ),
                                            margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                            child: Center(
                                                child: Text(
                                                  "新建账户",
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
                          //),
                );


  }

  void login_action(BuildContext Context){
    print("开始登陆。。。。。。。。。");
    if( user_acount_input_controller.text.toString() == "" ){
      print("名字为空。。。。。。。。。");
      showDialog(
          context: Context,
          builder: (context) => AlertDialog(title:Text("名字不能为空"))
      );

    }
    else
    if( password_input_controller.text.toString() == "" ){
      showDialog(
          context: Context,
          builder: (context) => AlertDialog(title:Text("密码不能为空"))
      );
      print("密码为空。。。。。。。。。");
    }
    else {
      print("开始get");
      gethttp(user_acount_input_controller.text.toString(),password_input_controller.text.toString()).then((val){
        setState((){
          if( val.toString().compareTo("noexit")==0 || val.toString().compareTo("password not right")==0  ) {
          showDialog(
            context: Context,
            builder: (context) => AlertDialog(title:Text("账号或者密码错误"))
          );
          this.showtext ="password not right";
            print(this.showtext);
          }
          else if(val.toString().compareTo("ok")==0 ){
            Navigator.of(context).pushAndRemoveUntil(
                new MaterialPageRoute(builder: (context) => new IndexPage()
                ), (route) => route == null);
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
      var datas = {
        "name":name,
        "pwd":pwd
      };
      response = await Dio().post('http://zjuqifengle.uicp.top/user/signin',
          queryParameters: datas
      );
      print(response);
      return response;
    }
    catch(e){
      return print(e);
    }
  }

}