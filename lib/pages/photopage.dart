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
                        _uploadImage(this._imagepath);
                      },
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



  Future _uploadImage(File image)async{

    String path = image.path;
    var name=path.substring(path.lastIndexOf("/")+1,path.length);

    FormData formdata = FormData.fromMap({
      "file": await MultipartFile.fromFile(path, filename:name)
    });

    Response response;

    var datas={
      "pics": formdata
    };

    Dio dio =new Dio();
     response =await Dio().post("http://zjuqifengle.uicp.top/pics/new",
                                  queryParameters: datas);
    if(response.statusCode == 200){
      print( "图片上传成功");
    }

  }


}