/**
 * Copyright (C), 2015-2020, suntront
 * FileName: LayoutViewPage
 * Author: Jeek
 * Date: 2020/11/24
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(LayoutViewPage());

class LayoutViewPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: LayoutViewPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class LayoutViewPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LayoutViewPageState();
  }
}

class _LayoutViewPageState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutViewPage Page"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        IconBadge(Icons.directions_bike),
        IconBadge(Icons.swap_calls),
        IconBadge(Icons.person)
      ],),
    );
  }
}

class IconBadge extends StatelessWidget {
  IconData icon;
  double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      color: Colors.blue,
      width: size + 62,
      height: size + 62,
    );
  }
}
