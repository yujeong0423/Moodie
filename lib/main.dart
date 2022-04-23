import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:moodie1/pages/home.dart';
import 'package:moodie1/pages/post/home_page.dart';
import 'package:moodie1/pages/post/write_page.dart';
import 'package:moodie1/pages/user/join_page.dart';
import 'package:get/get.dart';
import 'package:moodie1/pages/user/login_page.dart';
import 'package:moodie1/pages/user/user_info.dart';
import 'package:moodie1/pages/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: TabBarView(
              children: [
                WritePage(),
                MyHomePage(title: 'aa',),
                JoinPage(),
              ],
            ),
            bottomNavigationBar: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.format_list_bulleted),
              ),
              Tab(
                icon: Icon(Icons.person),
              )
            ]),
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
