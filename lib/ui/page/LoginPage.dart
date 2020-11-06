import 'package:flutter/foundation.dart';
/**
 * Copyright (C), 2015-2020, suntront
 * FileName: LoginPage
 * Author: Jeek
 * Date: 2020/10/22 9:36
 * Description:
 */
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginState();
  }
}

class _LoginState extends State<LoginPage> {
  GlobalKey<FormState> _loginForm = GlobalKey();
  GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey();
  String username;
  String password;

  void login() {
    var loginFormState = _loginForm.currentState;
    if (loginFormState.validate()) {
      loginFormState.save();
      _scaffoldkey.currentState.showSnackBar(SnackBar(
        content: Text("loign username: $username password: $password"),
      ));
      print("loign username: $username password: $password");
    }
  }

  Widget _buildLoginButton(){
    return RaisedButton(
      onPressed: login,
      textColor: Colors.white,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(22.0))),
      padding: const EdgeInsets.all(0.0),
      child: Container(
        width: 260,
        height: 44,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xff25D1D1),
              Color(0xff3BE6AD),
              Color(0xff20DDAA)
            ],
          ),
        ),
        child: Container(
            width: double.infinity,
            alignment: Alignment.center, child: Text('登录')),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldkey,
//      appBar: AppBar(
//        title: Text("Login Page"),
//      ),
        body: Container(
      padding: EdgeInsets.all(15.0),
      decoration: new BoxDecoration(
        color: Colors.grey,
        image: new DecorationImage(
          image: new AssetImage("assets/images/login_bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        child: Form(
          key: _loginForm,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "请输入用户名",
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                ),
                onSaved: (value) {
                  username = value;
                },
                onFieldSubmitted: (value) {},
                validator: (value) {
                  if (value.length == 0) {
                    return "用户名不能为空";
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(

                  labelText: "请输入密码",
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                ),
                onSaved: (value) {
                  password = value;
                },
                onFieldSubmitted: (value) {},
                validator: (value) {
                  if (value.length < 6) {
                    return "密码长度不能小于6位";
                  }
                },
              ),
              SizedBox(
                height: 30,
              ),
             _buildLoginButton(),
            ],
          ),
        ),
      ),
    ));
  }
}
