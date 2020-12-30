/**
 * Copyright (C), 2015-2020, suntront
 * FileName: SharedPreferencesPage
 * Author: Jeek
 * Date: 2020/12/30
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/base/utils/EncryptUtil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Application.dart';

void main()async{
  try{
    await EncryptUtil.initEncrypt();
  }catch(e){

  }
  runApp(SharedPreferencesPage());
}

class SharedPreferencesPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: SharedPreferencesPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class SharedPreferencesPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SharedPreferencesPageState();
  }
}

class _SharedPreferencesPageState extends State<StatefulWidget> {

  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Application.getSpUtils().then((value){
      setState(() {
        count = value.getInt("count");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SharedPreferencesPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("count: $count"),
            OutlinedButton(
              child: Text("SharedPreferencesPage"),
              onPressed: (){
                setState(() {
                  count += 1;
                });
                Application.getSpUtils().then((value) => value.setInt("count", count));
              },
            ),
          ],
        )
      ),
    );
  }
}