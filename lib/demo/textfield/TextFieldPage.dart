/**
 * Copyright (C), 2015-2020, suntront
 * FileName: TextFieldPage
 * Author: Jeek
 * Date: 2020/11/25
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(TextFieldPage());

class TextFieldPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: TextFieldPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class TextFieldPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextFieldPageState();
  }
}

class _TextFieldPageState extends State<StatefulWidget> {
  TextEditingController usernameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //usernameController.text = "Hello word";
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFieldPage Page"),
      ),
      body: Container(
        color: Colors.grey[250],
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              onChanged: (value) {
                print(value);
              },
              onSubmitted: (value) {
                debugPrint(value);
              },
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "请输入用户名",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color(0x23000000)),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
              child: Expanded(
                child: OutlineButton(
                  color: Colors.yellow,
                  child: Text("登录"),
                  shape: RoundedRectangleBorder(side: BorderSide.none,borderRadius: BorderRadius.all(Radius.circular(5))),
                  onPressed: (){
                    print("username: ${usernameController.text}");
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
