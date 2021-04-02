import 'package:flutter_ninghao/db/table/User.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

/**
 * Copyright (C), 2015-2021, suntront
 * FileName: SQLUtils
 * Author: Jeek
 * Date: 2021/4/1
 * Description:
 */

class SQLiteHelper {

  static const String DB_NAME = "flutter_ninghao2";
  SQLiteHelper._();
  // 数据库路径
  String databasesPath;
  // 数据库
  Database database;
  // 数据库版本
  int dbVersion = 1;

  static SQLiteHelper sQLiteHelper;

  static SQLiteHelper getInstance() {
    if (null == sQLiteHelper) sQLiteHelper = SQLiteHelper._();
    return sQLiteHelper;
  }

  /// 打开数据库
  Future<Database> openDb(String dbName) async {
    // 如果数据库路径不存在，赋值
    if (null == databasesPath || databasesPath.isEmpty) {
      databasesPath = await getDatabasesPath();
    }
    // 如果数据库存在，而且数据库没有关闭，先关闭数据库
    closeDb();
    database = await openDatabase(join(databasesPath, dbName + '.db'),
        version: dbVersion, onCreate: (Database db, int version) async {
          // 用户表
          await db.execute(User.CREATE_TABLE);
          // 信息表
          // await db.execute(PickInfo.CREATE_TABLE);
        }, onUpgrade: (Database db, int oldVersion, int newVersion) {
          // 版本更新可能牵扯到重新插入表、删除表、表中字段变更-具体更新相关sql语句进行操作

        });
    return database;
  }

  /// 关闭数据库
  closeDb() async {
    // 如果数据库存在，而且数据库没有关闭，先关闭数据库
    if (null != database && database.isOpen) {
      await database.close();
      database = null;
    }
  }

  /// 删除数据库
  deleteDb(String dbName) async {
    // 如果数据库路径不存在，赋值
    if (null == databasesPath || databasesPath.isEmpty)
      databasesPath = await getDatabasesPath();

    await deleteDatabase(join(databasesPath, dbName + '.db'));
  }

  /// 数据库版本升级
  static void onUpdate(Database database, int oldVersion, int newVersion) {
    if (oldVersion == 1 && newVersion == 2) {
      print("数据库升级： 1 -> 2");
      //TODO: 修改表名
      String renamePasswordSql = "ALTER TABLE allpass_password RENAME TO allpass_password1";
      database.execute(renamePasswordSql);
      //TODO: 创建新表
      String createPasswordSql = '''
        CREATE TABLE allpass_password(
        uniqueKey INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        username TEXT NOT NULL,
        password TEXT NOT NULL,
        url TEXT NOT NULL,
        folder TEXT DEFAULT '默认',
        notes TEXT,
        label TEXT,
        fav INTEGER DEFAULT 0,
        createTime TEXT)
      ''';
      database.execute(createPasswordSql);
      //TODO: 迁移数据
      String movePasswordSql = "INSERT INTO allpass_password(uniqueKey,name,username,password,url,folder,notes,label,fav) "
          "SELECT uniqueKey,name,username,password,url,folder,notes,label,fav from allpass_password1";
      database.execute(movePasswordSql);
      String dropPasswordSql = "DROP TABLE allpass_password1";
      database.execute(dropPasswordSql);
      String updatePasswordSql = "UPDATE allpass_password SET createTime=?";
      database.execute(updatePasswordSql, [DateTime.now().toIso8601String()]);

      //TODO: 修改表名
      String renameCardSql = "ALTER TABLE allpass_card RENAME TO allpass_card1";
      database.execute(renameCardSql);
      //TODO: 创建新表
      String createCardSql = '''
        CREATE TABLE allpass_card(
        uniqueKey INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        ownerName TEXT,
        cardId TEXT NOT NULL,
        password TEXT,
        telephone TEXT,
        folder TEXT DEFAULT '默认',
        notes TEXT,
        label TEXT,
        fav INTEGER DEFAULT 0,
        createTime TEXT)
      ''';
      database.execute(createCardSql);
      //TODO: 迁移数据
      String moveCardSql = "INSERT INTO allpass_card(uniqueKey,name,ownerName,cardId,password,telephone,folder,notes,label,fav)"
          " SELECT uniqueKey,name,ownerName,cardId,password,telephone,folder,notes,label,fav from allpass_card1";
      database.execute(moveCardSql);
      String dropCardSql = "DROP TABLE allpass_card1";
      database.execute(dropCardSql);
      String updateCardSql = "UPDATE allpass_card SET createTime=?";
      database.execute(updateCardSql, [DateTime.now().toIso8601String()]);
      //TODO: 数据库升级完成
      print("数据库升级完成");
    }
  }
}

