import 'dart:io';

/**
 * Copyright (C), 2015-2021, suntront
 * FileName: FileUploadPage
 * Author: Jeek
 * Date: 2021/3/31
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/base/http/HttpLite.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(FileUploadPage());

class FileUploadPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    return MaterialApp(
      home: FileUploadPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class FileUploadPageStatefulWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _FileUploadPageState();
  }
}

class _FileUploadPageState extends State<StatefulWidget> {

  // 选择照片
  File _image = File("");
  Future imagePicker({@required ImageSource source}) async {
    File imageTemp = await ImagePicker.pickImage(source: source);
    if(imageTemp != null) {
      setState(() {
        _image = imageTemp;
      });
      //TODO: 上传图片
      HttpLite.upload("http://192.168.2.5:8080/UploadPicture", imageTemp.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FileUploadPage"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.file(
              _image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            OutlinedButton(
              onPressed: () {
                print("选择图片");
                imagePicker(source: ImageSource.gallery);
              },
              child: Text("选择图片"),
            ),
          ],
        ),
      ),
    );
  }


}
