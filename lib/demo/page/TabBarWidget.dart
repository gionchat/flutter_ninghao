import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: TabBarWidget
 * Author: Jeek
 * Date: 2020/11/23
 * Description:
 */
void main() => runApp(TabBarPage());

class TabBarPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: TabBarStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue,
      splashColor: Colors.white70),
    );
  }
}

class TabBarStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabBarState();
  }
}

class _TabBarState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TabBarWidget();
  }
}

class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.green[100],
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              tooltip: "tooltip iconbutton click",
              onPressed: () {
                print("iconbutton click");
              },
            ),
            title: Text("Test Page"),
            actions: [
              SizedBox(
                width: 15,
              ),
              IconButton(
                  icon: Icon(Icons.tag), tooltip: "tooltips", onPressed: () {}),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.print),
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.black12,
              labelColor: Colors.yellow,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 5,
              tabs: [
                Tab(icon: Icon(Icons.local_florist),),
                Tab(icon: Icon(Icons.change_history),),
                Tab(icon: Icon(Icons.directions_bike),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.local_florist,size: 128,color: Colors.black12),
              Icon(Icons.change_history,size: 128,color: Colors.black12),
              Icon(Icons.directions_bike,size: 128,color: Colors.black12),
            ],
          ),
        ));
  }
}
