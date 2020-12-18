import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

import 'DBManager.dart';


/**
 * Copyright (C), 2015-2020, suntront
 * FileName: DB
 * Author: Jeek
 * Date: 2020/12/18
 * Description: 创建数据库表的基类
 */
abstract class BaseDBProvider {
  bool isTableExits = false;

  String tableSqlString();

  String tableName();

  String tableBaseString(String name, String columnId) {
    return '''
      CREATE TABLE $name (
      $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
    ''';
  }

  Future<Database> getDataBase() async {
    return await open();
  }

  @mustCallSuper
  void prepare(name, String createSql) async {
    isTableExits = await DBManager.isTableExists(name);
    if (!isTableExits) {
      Database db = await DBManager.getCurrentDatabase();
      return await db.execute(createSql);
    }
  }

  @mustCallSuper
  Future<Database> open() async {
    if (!isTableExits) {
      prepare(tableName(), tableSqlString());
    }
    return await DBManager.getCurrentDatabase();
  }
}