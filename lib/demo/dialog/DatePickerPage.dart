/**
 * Copyright (C), 2015-2020, suntront
 * FileName: DatePickerPage
 * Author: Jeek
 * Date: 2020/11/30
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

void main() => runApp(DatePickerPage());

class DatePickerPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: DatePickerPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class DatePickerPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DatePickerPageState();
  }
}

class _DatePickerPageState extends State<StatefulWidget> {

  DateTime selectDate = DateTime.now();

  selectDateFunc() async{
    DateTime date= await showDatePicker(context: context, initialDate: selectDate, firstDate: DateTime(1900), lastDate: DateTime(2100));

    if(date != null){
      setState(() {
        selectDate = date;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePickerPage Page"),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            print("inkWell");
            selectDateFunc();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(DateFormat.yMd().format(selectDate)),
              Icon(Icons.date_range_sharp)
            ],
          ),
        ),
      ),
    );
  }
}