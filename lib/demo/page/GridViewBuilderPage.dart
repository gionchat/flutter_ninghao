import 'package:flutter/cupertino.dart';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: GridViewBuilderPage
 * Author: Jeek
 * Date: 2020/11/24
 * Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninghao/demo/model/Post.dart';

void main() => runApp(GridViewBuilderPage());

class GridViewBuilderPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: GridViewBuilderPageStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class GridViewBuilderPageStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GridViewBuilderPageState();
  }
}

class _GridViewBuilderPageState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("GridViewBuilderPage Page"),
      ),
      body: GridViewBuildWidget(),
    );
  }
}

class GridViewBuildWidget extends StatefulWidget {
  @override
  _GridViewBuildWidgetState createState() => _GridViewBuildWidgetState();
}

class _GridViewBuildWidgetState extends State<GridViewBuildWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Container(child: Image.network(posts[index].imgUrl,fit: BoxFit.cover,));
        });
  }
}
