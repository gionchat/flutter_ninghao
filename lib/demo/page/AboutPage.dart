/**
 * Copyright (C), 2015-2020, suntront
 * FileName: AboutPage
 * Author: Jeek
 * Date: 2020/11/24
 * Description:
 */

import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AboutPageState();
  }
}

class _AboutPageState extends State<AboutPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("AboutPage"),
      ),
      body:Center(
        child:FlatButton(
          child:  Text("AboutPage"),
          onPressed: (){
            print("Back");
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}