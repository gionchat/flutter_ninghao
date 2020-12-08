/**
 * Copyright (C), 2015-2020, suntront
 * FileName: ThemeProviderPage
 * Author: Jeek
 * Date: 2020/12/8
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/provider/logic/ThemeProvider.dart';
import 'package:provider/provider.dart';

void main() => runApp(ThemeProviderPage());

class ThemeProviderPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context,themeProvider,_){
          return MaterialApp(
            home: ThemeProviderPageStatefulWidget(),
            theme: themeProvider.currentTheme);
        },
      ),
    );
  }
}

class ThemeProviderPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ThemeProviderPageState();
  }
}

class _ThemeProviderPageState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ThemeProviderPage"),
        actions: [
          IconButton(icon:Icon(Icons.lightbulb_outline),onPressed: (){
            context.read<ThemeProvider>().switchTheme();
          },)
        ],
      ),
      body: Center(
        child: Text("ThemeProviderPage1"),
      ),
    );
  }
}