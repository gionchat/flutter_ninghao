/**
 * Copyright (C), 2015-2020, suntront
 * FileName: BottomSheetModalPage
 * Author: Jeek
 * Date: 2020/11/30
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(BottomSheetModalPage());

class BottomSheetModalPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: BottomSheetModalPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class BottomSheetModalPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomSheetModalPageState();
  }
}

class _BottomSheetModalPageState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomSheetModalPage Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlineButton(
            child: Text("ModalBootomSheet"),
            onPressed: () {
              print("jeek ModalBottomSheet");
              showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                        height: 100,
                        width: double.infinity,
                        color: Colors.yellow,
                        child: Column(
                          children: [],
                        ),
                      ));
            },
          ),
          OutlineButton(
            onPressed: () {
              print("jeek show snack bar");
              Scaffold.of(context).showSnackBar(SnackBar(content: Text("Snackbar Test")));
            },
            child: Text("snackBar"),
          )
        ],
      )),
    );
  }
}
