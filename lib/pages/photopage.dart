import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:dio/dio.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PhotoPage extends StatefulWidget{
  PhotoPage({Key key}) : super(key: key);
  State<StatefulWidget> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  var downloadimagepath  = " www.baidu.com";
  var _imagepath;//记录选择的图片
  String _imageServerPath;
  var dropdownbutton_value  ;

  List<DropdownMenuItem> getListData(){
    List<DropdownMenuItem> items=new List();
    DropdownMenuItem dropdownMenuItem1=new DropdownMenuItem(
      child:new Text('生活'),
      value: '1',
    );
    items.add(dropdownMenuItem1);

    DropdownMenuItem dropdownMenuItem2=new DropdownMenuItem(
      child:new Text('动物'),
      value: '2',
    );
    items.add(dropdownMenuItem2);
    DropdownMenuItem dropdownMenuItem3=new DropdownMenuItem(
      child:new Text('植物'),
      value: '3',
    );
    items.add(dropdownMenuItem3);
    DropdownMenuItem dropdownMenuItem4=new DropdownMenuItem(
      child:new Text('交通工具'),
      value: '4',
    );
    items.add(dropdownMenuItem4);
    DropdownMenuItem dropdownMenuItem5=new DropdownMenuItem(
      child:new Text('电子产品'),
      value: '5',
    );
    items.add(dropdownMenuItem5);
    DropdownMenuItem dropdownMenuItem6=new DropdownMenuItem(
      child:new Text('乐器'),
      value: '6',
    );
    items.add(dropdownMenuItem6);
    DropdownMenuItem dropdownMenuItem7=new DropdownMenuItem(
      child:new Text('建筑'),
      value: '7',
    );
    items.add(dropdownMenuItem7);
    DropdownMenuItem dropdownMenuItem8=new DropdownMenuItem(
      child:new Text('蔬菜'),
      value: '8',
    );
    items.add(dropdownMenuItem8);
    DropdownMenuItem dropdownMenuItem9=new DropdownMenuItem(
      child:new Text('玩具'),
      value: '9',
    );
    items.add(dropdownMenuItem9);
    DropdownMenuItem dropdownMenuItem10=new DropdownMenuItem(
      child:new Text('学习用品'),
      value: '10',
    );
    items.add(dropdownMenuItem10);
    return items;
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: (){
          Navigator.of(context).pop();
        },
      )
      ,
      appBar: AppBar(
        leading: Icon(Icons.camera_alt),
        title: Text("拍照"),
      ),
      body:  ListView(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(10),
              child: Column(
                  children: <Widget>[
                    //_ImageView(_imagepath),
                    RaisedButton(
                      child: Text("拍照"),
                      onPressed: (){
                        _takenPhoto();
                      },
                    ),
                    RaisedButton(
                      child: Text("选择照片"),
                      onPressed: (){
                        _openGallery();
                      },//
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
                      child: _imagepath==null?Text("没有图片"): Image.file(_imagepath,fit: BoxFit.cover,),
                    ),


                    SizedBox(height: 10),

                    RaisedButton(
                      child: Text("点击上传到服务器"),
                      onPressed: (){
                        _uploadImage(this._imagepath, this.dropdownbutton_value,  context);

                      },
                    ),

                    DropdownButton(
                      items: getListData(),
                      hint:new Text('选择您的照片类型'),//当没有默认值的时候可以设置的提示
                      value: dropdownbutton_value,//下拉菜单选择完之后显示给用户的值
                      onChanged: (T){//下拉菜单item点击之后的回调
                      setState(() {
                        dropdownbutton_value=T;
                        print(this.dropdownbutton_value);
                               });
                       },
                      elevation: 24,//设置阴影的高度
                      style: new TextStyle(//设置文本框里面文字的样式
                      color: Colors.black
                      ),
                  //              isDense: false,//减少按钮的高度。默认情况下，此按钮的高度与其菜单项的高度相同。如果isDense为true，则按钮的高度减少约一半。 这个当按钮嵌入添加的容器中时，非常有用
                      iconSize: 50.0,//设置三角标icon的大小
                    ),
                    RaisedButton(
                      child: Text("下载图片"),
                      onPressed: (){
                        setState(() {
                          this.downloadimagepath = "http://2k88r29309.qicp.vip/image/gai1.jpg";
                        },
                        );
                      },
                    ),
                    Image.network(downloadimagepath),
                  ]
              ),
            ),
          ]
      ),
    );
  }
/*
  Widget _ImageView(imagepath){//图片控件
    if(imagepath == null){
      return Center(
        child: Text("请选择照片或者拍照"),
      );
    }
    else{
      return Image.file(imagepath,);
    }
  }
*/
  _takenPhoto() async{    /*  拍照*/
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      this._imagepath = image;
    });
  }/* 拍照*/


  _openGallery() async{/* 相册*/
    var image=await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      this._imagepath = image;
    });
  }/* 相册*/



  Future _uploadImage(File image,var value,BuildContext context )async{

    if ( value != null) {
      String path = image.path;
      var name = path.substring(path.lastIndexOf("/") + 1, path.length);

      FormData formdata = FormData.fromMap({
        "file": await MultipartFile.fromFile(path, filename: name)
      });
      Response response;
      var datas = {
        "pics": formdata
      };
      Dio dio = new Dio();
      response = await Dio().post("http://zjuqifengle.uicp.top/pics/new",
          queryParameters: datas);
      if (response.statusCode == 200) {
        print("图片上传成功");
      }
    }
    else {
      print("输入图片类型为空---------");
      showDialog(
          context:  context,
          builder: (context) => AlertDialog(title:Text("类型不能为空"))
      );
    }


  }


}