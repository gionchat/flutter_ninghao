/**
 * Copyright (C), 2015-2020, suntront
 * FileName: ValueListenablePage
 * Author: Jeek
 * Date: 2020/12/31
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(ValueListenablePage());

class ValueListenablePage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: ValueListenablePageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class ValueListenablePageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ValueListenablePageState();
  }
}

class _ValueListenablePageState extends State<StatefulWidget> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _counter.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ValueListenablePage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder<int>(
              builder: (BuildContext context, int value, Widget child) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
              valueListenable: _counter,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlineButton(
                  onPressed: () {
                    _counter.value += 1;
                  },
                  child: Text("+"),
                ),
                OutlineButton(
                  onPressed: () {
                    _counter.value -= 1;
                  },
                  child: Text("-"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
