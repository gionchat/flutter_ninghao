/**
 * Copyright (C), 2015-2020, suntront
 * FileName: RadioListTilePage
 * Author: Jeek
 * Date: 2020/11/30
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(RadioListTilePage());

class RadioListTilePage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: RadioListTilePageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class RadioListTilePageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RadioListTilePageState();
  }
}

class _RadioListTilePageState extends State<StatefulWidget> {
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioListTilePage Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile(
                value: 0,
                groupValue: groupValue,
                title: Text("Title"),
                subtitle: Text("Subtitle"),
                secondary: Icon(Icons.directions_bike),
                selected: groupValue == 0,
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                }),
            RadioListTile(
                value: 1,
                groupValue: groupValue,
                title: Text("Title"),
                subtitle: Text("Subtitle"),
                secondary: Icon(Icons.directions_bus),
                selected: groupValue == 1,
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                }),
            RadioListTile(
                value: 2,
                groupValue: groupValue,
                title: Text("Title"),
                subtitle: Text("Subtitle"),
                secondary: Icon(Icons.directions_boat),
                selected: groupValue == 2,
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}
