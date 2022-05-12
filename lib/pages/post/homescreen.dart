import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
            children: [
              // moodie 컨테이너
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 25, 0, 30),
                child: Text(
                  "Moodie",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff5973FF)
                  ),
                ),
              ),
              //뒤로가기 컨테이너
              Container(
                  height: 6,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                      ),
                    ],
                  )
              ),

              // 오늘의 질문 텍스트 컨테이너
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Text(
                  "오늘의 질문",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff5973FF)
                  ),
                ),
              ),

              // 받은 질문 텍스트
              Container(
                margin: EdgeInsets.all(40),
                width: 340,
                height: 235,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(15),// 모서리를 둥글게
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),

                // height: 265,
                // width: 316,
                alignment: Alignment.center,
                child:  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(

                              padding: EdgeInsets.fromLTRB(30, 70, 30, 75),
                              child:Text(

                                  "Q1. 오늘 [   ] 님의 기분은 ?",
                                  style: TextStyle(
                                      letterSpacing: 1.2, fontSize: 15, fontWeight: FontWeight.bold,
                                      color: Colors.black)
                              ),
                            ),

                            Text(
                                "질문을 좌우로 스와이프하고 터치해 보세요!",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey.withOpacity(0.5))
                            ),
                            Text(
                              "건너뛰기 (일 2회)",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff5973FF),
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ]),
              ),
            ]),
      ),
    );
  }
}