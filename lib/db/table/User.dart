/**
 * Copyright (C), 2015-2020, suntront
 * FileName: User
 * Author: Jeek
 * Date: 2020/12/17
 * Description:
 */


class User {

  int id;
  String name;
  int age;
  int sex;

  static final String CREATE_TABLE = "CREATE TABLE User ("
      "id integer primary key AUTOINCREMENT,"
      "name TEXT,"
      "age TEXT,"
      "sex integer"
      ")";

  User({this.id, this.name, this.age, this.sex});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    age = json['age'];
    sex = json['sex'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['age'] = this.age;
    data['sex'] = this.sex;
    return data;
  }
}
