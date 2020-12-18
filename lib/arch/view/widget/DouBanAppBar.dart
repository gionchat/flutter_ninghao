import 'package:flutter/material.dart';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: DouBanAppBar
 * Author: Jeek
 * Date: 2020/12/16
 * Description:
 */

class DouBanAppBar {
  String title;
  bool back;

  DouBanAppBar({this.title, this.back});
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title),
      automaticallyImplyLeading: back,
    );
  }
}
