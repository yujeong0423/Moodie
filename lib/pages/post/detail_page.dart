import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moodie1/pages/post/home_page.dart';
import 'update_page.dart';

class DetailPage extends StatelessWidget {

  final int id;

  const DetailPage(this.id);

  @override
  Widget build(BuildContext context) {

    //String data = Get.arguments;
    return Scaffold(
        // appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                height: 100,
                child: Text(
                  "Moodie",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff5973FF)
                  ),
                ),
              ),
              Text("글 제목", style: TextStyle(fontWeight: FontWeight.bold, fontSize:25),
              ),
              Divider(),
              Row(
                children: [
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Get.off(HomePage());
                  //   },
                  //   child: Text("삭제"),
                  // ),
                  SizedBox(width: 10),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                    child: Text("글 내용" * 30)
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(UpdatePage());
                },
                child: Text("수정"),
              ),
            ],
          ),
        )
    );
  }
}