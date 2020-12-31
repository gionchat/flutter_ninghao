/**
 * Copyright (C), 2015-2020, suntront
 * FileName: EncryptPage
 * Author: Jeek
 * Date: 2020/12/30
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/base/utils/EncryptUtil.dart';

void main() => runApp(EncryptPage());

class EncryptPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: EncryptPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class EncryptPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EncryptPageState();
  }
}

class _EncryptPageState extends State<StatefulWidget> {

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    EncryptUtil.initEncrypt();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("EncryptPage"),
      ),
        //EncryptUtil.encrypt(password)
      body: Center(
        child: OutlineButton(
          child: Text("EncryptPage"),
          onPressed: (){
            String data = "Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.";
            print("data: $data");
            String encryptData = EncryptUtil.encrypt(data);
            print("data encrypt => ${encryptData}");
            print("data decrypt => ${EncryptUtil.decrypt(encryptData)}");
            },
        ),
      ),
    );
  }
}