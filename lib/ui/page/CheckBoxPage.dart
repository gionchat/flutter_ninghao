/**
 * Copyright (C), 2015-2020, suntront
 * FileName: CheckBoxPage
 * Author: Jeek
 * Date: 2020/11/12
 * Description:
 */

import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CheckBoxState();
  }
}

class _CheckBoxState extends State<CheckBoxPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox Page"),
      ),
      body: Center(child: Checkbox(

      ),),
    );
  }
}