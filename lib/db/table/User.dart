import 'package:flutter_ninghao/db/helper/SQLiteHelper.dart';
import 'package:sqflite/sqflite.dart';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: User
 * Author: Jeek
 * Date: 2020/12/17
 * Description: User表 CRUD 事务处理
 */

class User {
  Database database;
  int id;
  String name;
  String phone;
  int age;
  int sex;

  static final String TABLE_NAME = "User";

  static final String CREATE_TABLE = "CREATE TABLE $TABLE_NAME ("
      "id integer primary key AUTOINCREMENT,"
      "name TEXT,"
      "phone TEXT,"
      "age integer,"
      "sex integer"
      ")";

  User({this.phone, this.name, this.age, this.sex});

  fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    age = json['age'];
    sex = json['sex'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['age'] = this.age;
    data['sex'] = this.sex;
    data['phone'] = this.phone;
    return data;
  }

  // 插入数据
  Future<int> insert<T extends User>() async {
    if (database == null) {
      database = await SQLiteHelper.getInstance().openDb(SQLiteHelper.DB_NAME);
    }
    if (null == database || !database.isOpen) return -1;
    print("开始插入数据：${toJson()}");
    return await database.insert(
      TABLE_NAME,
      toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  /// 删除数据
  Future<int> delete<T extends User>({String key="", String value=""}) async {
    if (database == null) {
      database = await SQLiteHelper.getInstance().openDb(SQLiteHelper.DB_NAME);
    }
    if (null == database || !database.isOpen) return 0;

    if (key.isEmpty || value.isEmpty) {
      return await database.delete(TABLE_NAME);
    } else {
      return await database.delete(
        TABLE_NAME,
        where: (key + " = ?"),
        whereArgs: [value],
      );
    }
  }

  /// 更新数据
  Future<int> update<T extends User>({String key, String value}) async {
    if (database == null) {
      database = await SQLiteHelper.getInstance().openDb(SQLiteHelper.DB_NAME);
    }
    if (null == database || !database.isOpen) return 0;
    print("开始更新数据：${toJson()}");
    return await database.update(
      TABLE_NAME,
      toJson(),
      where: (key + " = ?"),
      whereArgs: [value],
    );
  }

  // 查询数据
  Future<List<T>> query<T extends User>(
      {String key = "", String value = ""}) async {
    if (database == null) {
      database = await SQLiteHelper.getInstance().openDb(SQLiteHelper.DB_NAME);
    }
    if (null == database || !database.isOpen) return null;

    List<Map<String, dynamic>> maps = List();

    if (key.isEmpty || value.isEmpty) {
      maps = await database.query(TABLE_NAME);
    } else {
      maps = await database.query(
        TABLE_NAME,
        where: (key + " = ?"),
        whereArgs: [value],
      );
    }
    print("查询数据：" + maps.toString());
    // map转换为List集合
    return List.generate(maps.length, (i) {
      return fromJson(maps[i]);
    });
  }
}
