import 'package:flutter/material.dart';
import 'package:flutter_ninghao/demo/model/Post.dart';

/**
 * Copyright (C), 2015-2020, suntront
 * FileName: LVBuilderWidget
 * Author: Jeek
 * Date: 2020/11/23
 * Description:
 */

class LVBuilderWidget extends StatelessWidget {
  Widget homeListViewItem(BuildContext context, int index) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            GestureDetector(
              child: Image.network(posts[index].imgUrl),
              onTap: () {
                print("post ${posts[index].imgUrl}");
                Navigator.pushNamed(context, "/PostShowPage");
              },
            ),
            SizedBox(
              height: 16,
            ),
            Text(posts[index].title),
            SizedBox(
              height: 16,
            ),
            Text(
              posts[index].author,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: posts.length,
        itemBuilder: homeListViewItem);
  }
}
