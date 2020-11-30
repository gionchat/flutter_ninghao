/**
 * Copyright (C), 2015-2020, suntront
 * FileName: SliderPage
 * Author: Jeek
 * Date: 2020/11/30
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(SliderPage());

class SliderPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: SliderPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class SliderPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SliderPageState();
  }
}

class _SliderPageState extends State<StatefulWidget> {
  double sliderValue = 0.0;
  String sliderText = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SliderPage Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(sliderText),
            Slider(
                value: sliderValue,
                inactiveColor: Colors.grey[300],
                activeColor: Colors.yellow,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                    sliderText = value.toString();
                  });
                })
          ],
        ),
      ),
    );
  }
}
