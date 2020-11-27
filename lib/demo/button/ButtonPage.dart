/**
 * Copyright (C), 2015-2020, suntront
 * FileName: ButtonPage
 * Author: Jeek
 * Date: 2020/11/25
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(ButtonPage());

class ButtonPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: ButtonPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class ButtonPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonPageState();
  }
}

class _ButtonPageState extends State<StatefulWidget> {
  String popupMenuValue = "Item1";
  String dropdownValue = "北京";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonPage Page"),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(20),
        children: [
          FlatButton(
              onPressed: () {
                print("FlatButton");
              },
              child: Text("FlatButton")),
          FlatButton.icon(
              onPressed: () {
                print("FlatButton.icon");
              },
              icon: Icon(Icons.add),
              label: Text("FlatButton icon")),
          RaisedButton(
              child: Text("RaisedButton"),
              onPressed: () {
                print("RaisedButton");
              }),
          RaisedButton.icon(
              onPressed: () {
                print("RasiedButton.icon");
              },
              icon: Icon(Icons.ac_unit),
              label: Text("RasiedButton.icon")),
          OutlineButton(
            onPressed: () {
              print("OutlineButton");
            },
            child: Text("OutlineButton"),
          ),
          OutlineButton.icon(
              onPressed: () {
                print("OutlineButton.icon");
              },
              icon: Icon(Icons.tag),
              label: Text("OutlineButton.icon")),
          TextButton(
              onPressed: () {
                print("TextButton");
              },
              child: Text("TextButton")),
          TextButton.icon(
              onPressed: () {
                print("TextButton.icon");
              },
              icon: Icon(Icons.local_florist),
              label: Text("TextButton.icon")),
          OutlineButton(
              onPressed: () {
                print("OutlineButton StadiumBorder");
              },
              splashColor: Colors.grey[200],
              textColor: Colors.blue,
              highlightedBorderColor: Colors.grey[200],
              child: Text("OutlineButton StadiumBorder"),
              shape: StadiumBorder()),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: OutlineButton(
                    child: Text("Button1"),
                    onPressed: () {
                      print("Row OutlineButton1");
                    }),
              ),
              Expanded(
                flex: 2,
                child: OutlineButton(
                    child: Text("Row OutlineButton2"),
                    onPressed: () {
                      print("Row OutlineButton2");
                    }),
              ),
            ],
          ),
          Row(
            children: [
              Text("$popupMenuValue"),
              PopupMenuButton(
                  onSelected: (value) {
                    print("popup menu button value: $value");
                    setState(() {
                      popupMenuValue = value;
                      print("popup menu button value: $value");
                    });
                  },
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("Item1"),
                          value: "Item1",
                        ),
                        PopupMenuItem(
                          child: Text("Item2"),
                          value: "Item2",
                        ),
                        PopupMenuItem(
                          child: Text("Item3"),
                          value: "Item3",
                        )
                      ]),
              DropdownButton(
                  value: dropdownValue,
                  items: [
                    DropdownMenuItem(
                      child: Text('北京'),
                      value: "北京",
                    ),
                    DropdownMenuItem(
                      child: Text('天津'),
                      value: "天津",
                    ),
                    DropdownMenuItem(
                      child: Text('河北'),
                      value: "河北",
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      dropdownValue = value;
                    });
                  })
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.wine_bar),
          elevation: 0.0,
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: () {
            print("FloatingActionButton");
          }),
    );
  }
}
