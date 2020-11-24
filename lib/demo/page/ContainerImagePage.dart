/**
 * Copyright (C), 2015-2020, suntront
 * FileName: ContainerImagePage
 * Author: Jeek
 * Date: 2020/11/23
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(ContainerImagePage());

class ContainerImagePage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: ContainerImageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class ContainerImageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ContainerImageState();
  }
}

class _ContainerImageState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ContainerImage Page"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("http://pic1.win4000.com/wallpaper/2020-01-07/5e14537a2cf17.jpg"),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}