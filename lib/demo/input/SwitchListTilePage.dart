/**
 * Copyright (C), 2015-2020, suntront
 * FileName: SwitchListTilePage
 * Author: Jeek
 * Date: 2020/11/30
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/demo/page/LayoutViewPage.dart';

void main() => runApp(SwitchListTilePage());

class SwitchListTilePage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: SwitchListTilePageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class SwitchListTilePageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SwitchListTilePageState();
  }
}

class _SwitchListTilePageState extends State<StatefulWidget> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SwitchListTilePage Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SwitchListTile(
                value: switchValue,
                title: Text("Title"),
                subtitle:Text("SubTiitle"),
                selected: switchValue,
                secondary: Icon(Icons.local_florist),
                onChanged: (value) {
              setState(() {
                switchValue = value;
              });
            }),
          ],
        ),
      ),
    );
  }
}
