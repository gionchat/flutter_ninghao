/**
 * Copyright (C), 2015-2020, suntront
 * FileName: AnimationPage
 * Author: Jeek
 * Date: 2020/10/28
 * Description:
 */

import 'package:flutter/material.dart';

class Animation1Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Animation1State();
  }
}

class _Animation1State extends State<Animation1Page> with SingleTickerProviderStateMixin{

  double textValue = 0.0;
  Animation<double> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this,duration: const Duration(seconds: 1));
    _animation = Tween(begin: 0.0,end: 1.0).animate(_animationController)..addListener(() {
      print("_animation: ${_animation.value}");
      setState(() {
        textValue = _animation.value;
      });
    })
    ..addStatusListener((status) {

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation1 Page"),
      ),
      body: Center(child: Text("$textValue"),),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_right),
        onPressed: (){
        _animationController.forward();
      },),
    );
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }
}