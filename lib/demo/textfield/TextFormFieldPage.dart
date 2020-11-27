/**
 * Copyright (C), 2015-2020, suntront
 * FileName: TextFormFieldPage
 * Author: Jeek
 * Date: 2020/11/25
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(TextFormFieldPage());

class TextFormFieldPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: TextFormFieldPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class TextFormFieldPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextFormFieldPageState();
  }
}

class _TextFormFieldPageState extends State<StatefulWidget> {

  final formKey = GlobalKey<FormState>();

  String username;
  String password;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFormFieldPage Page"),
      ),
      body: Form(
        key: formKey,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("http://pic1.win4000.com/wallpaper/2020-01-07/5e14537a2cf17.jpg"),
              fit: BoxFit.cover
            )
          ),
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onSaved: (value){
                  username = value;
                },
                validator: (value){
                  if(value.length < 6){
                    return "用户名输入长度不够";
                  }
                },
                decoration: InputDecoration(
                  labelText: "请输入用户名",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                onSaved: (value){
                  password = value;
                },
                validator: (value){
                  if(value.length < 6){
                    return "密码长度输入不够";
                  }
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "请输入密码",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: (){
                    print("登录");
                    formKey.currentState.validate();
                    formKey.currentState.save();
                    print("username: $username password: $password");
                  },
                  child: Text("登录"),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
