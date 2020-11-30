/**
 * Copyright (C), 2015-2020, suntront
 * FileName: TimePickerPage
 * Author: Jeek
 * Date: 2020/11/30
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

void main() => runApp(TimePickerPage());

class TimePickerPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: TimePickerPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class TimePickerPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TimePickerPageState();
  }
}

class _TimePickerPageState extends State<StatefulWidget> {

  DateTime selectDate = DateTime.now();
  TimeOfDay selectTime = TimeOfDay(hour: 9,minute: 30);

  selectTimeFunc()async{
    TimeOfDay time = await showTimePicker(context: context, initialTime: selectTime);

    if(time != null){
      setState(() {
        selectTime = time;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("TimePickerPage Page"),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            selectTimeFunc();
            print("select time");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(selectTime.format(context)),
            ],
          ),
        ),
      ),
    );
  }
}