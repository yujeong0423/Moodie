import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moodie1/pages/post/detail_page.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: ListView.separated(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Get.to(DetailPage(index), arguments: "arguments 속성 테스트");
            },
            title: Text("제목1"),
            leading: Text("1"),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}