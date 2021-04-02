import 'dart:io';

import 'package:path_provider/path_provider.dart';

/**
 * Copyright (C), 2015-2021, suntront
 * FileName: FileUtils
 * Author: Jeek
 * Date: 2021/3/31
 * Description:
 *  getTemporaryDirectory()：获取应用临时文件夹，该文件夹用来保存应用的缓存，可以随时删除用于清缓存，对应于Android的getCacheDir()和ios的NSTemporaryDirectory()
 *  getApplicationDocumentsDirectory()：获取应用安装路径，在应用被卸载的时候删除，对应Android的AppDate目录和iOS的NSDocumentDirectory目录
 *  getExternalStorageDirectory()：获取存储卡目录，仅支持Android
 */

class FileUtils{

  static Future<String>  _createDir() async {
    Directory tempDir = null;
    if(Platform.isIOS){
      tempDir = await getTemporaryDirectory();
    }
    if(Platform.isAndroid){
      tempDir = await getExternalStorageDirectory();
    }
    Directory directory = new Directory('${tempDir.path}/lijunjun');

    if (!directory.existsSync()) {
      directory.createSync();
      print('文档初始化成功，文件保存路径为 ${directory.path}');
    }
    return directory.path;
  }

  static Future<File>  _createFile() async {
    final path = await _createDir();
    String filePath = '${path}/test.txt';
    File file = new File(filePath);
    if (!file.existsSync()) {
      file.createSync();
      print('文件创建成功');
    }
    return file;
  }


  static void deleteDir() async {
    final path = await _createDir();
    Directory directory = new Directory(path);
    if (directory.existsSync()) {
      List<FileSystemEntity> files = directory.listSync();

      if (files.length > 0) {
        files.forEach((file) {
          file.deleteSync();
        });
      }
      directory.deleteSync();
    }
  }

  static void showDir() async {
    final path = await _createDir();
    Directory directory = new Directory(path);
    directory.listSync().forEach((file) {
      print(file.path);
    });
  }

  static Future<String> readString() async {
      File file = await _createFile();
      String contents = await file.readAsString();
      return contents;

  }

  static Future<File> writeString(String content) async {
    File file = await _createFile();
    return file.writeAsString('$content');
  }

  static Future<File> writeStringAppend(String content) async {
    File file = await _createFile();
    String originString = await readString();
    String appendString = originString + content;
    return file.writeAsString(appendString);
  }
}