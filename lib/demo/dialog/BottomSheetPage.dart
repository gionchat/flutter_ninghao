/**
 * Copyright (C), 2015-2020, suntront
 * FileName: BottomSheetPage
 * Author: Jeek
 * Date: 2020/11/30
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(BottomSheetPage());

class BottomSheetPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: BottomSheetPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class BottomSheetPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomSheetPageState();
  }
}

class _BottomSheetPageState extends State<StatefulWidget> {

  GlobalKey<ScaffoldState> bottomSheet = GlobalKey<ScaffoldState>();

  showBottomSheets() {
    bottomSheet.currentState.showBottomSheet((context) => Container(
      height: 200,
      width: double.infinity,
      color: Colors.indigoAccent,
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text("BottomSheet"),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: bottomSheet,
      appBar: AppBar(
        title: Text("BottomSheetPage Page"),
      ),
      body: Center(
        child: OutlineButton(
          onPressed: () {
            print("jeek BottomSheet");
            showBottomSheets();
          },
          child: Text("BottomSheet"),
        ),
      ),
    );
  }
}
