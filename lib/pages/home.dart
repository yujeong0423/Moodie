import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:moodie1/pages/edit.dart';
import 'package:moodie1/pages/memo.dart';
import 'package:moodie1/database/db.dart';
import 'view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _valueList = ['행복', '기쁨', '쏘쏘', '슬픔', '화남'];
  String _selectedValue = '정렬';
  String deleteId = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'M',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent),
              )
            ],
          ),
          Text('oodie',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w100,
                  color: Colors.indigoAccent)),

          Row(
            children: <Widget>[
              Text('나의 문답 List', style: TextStyle(
                  fontSize: 16,
                  color: Colors.indigoAccent)),
              Expanded(child: memoBuilder(context))
            ],
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // 페이지 위로 이동
          Navigator.push(
              context, CupertinoPageRoute(builder: (context) => EditPage()));
        },
        tooltip: '',
        label: Text(''),
        icon: Icon(Icons.add),
      ),
    );
  }

  Future<List<Memo>> loadMemo() async {
    DBHelper sd = DBHelper();
    return await sd.memos();
  }

  Future<void> deleteMemo(String id) async {
    DBHelper sd = DBHelper();
    await sd.deleteMemo(id);
  }

  void showAlertDialog(BuildContext context) async {
    String result = await showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('삭제'),
          content: Text("정말 삭제하시겠어요?"),
          actions: <Widget>[
            FlatButton(
              child: Text('삭제'),
              onPressed: () {
                Navigator.pop(context, "삭제");
                setState(() {
                  deleteMemo(deleteId);
                });
                deleteId = '';
              },
            ),
            FlatButton(
              child: Text('취소'),
              onPressed: () {
                deleteId = '';
                Navigator.pop(context, "취소");
              },
            ),
          ],
        );
      },
    );
  }

  Widget memoBuilder(BuildContext parentContext) {
    return FutureBuilder(
      builder: (context, Snap) {
        if ((Snap.data as List).length == 0) {
          return Container(
              alignment: Alignment.center,
              child: Text(
                  "리스트가 비어 있어요",
                  style: TextStyle(fontSize:14),textAlign: TextAlign.center));
        }
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(28),
          itemCount: (Snap.data as List).length,
          itemBuilder: (context, index) {
            Memo memo = (Snap.data as List)[index];
            return InkWell(
              onTap:(){
                Navigator.push(
                    parentContext, CupertinoPageRoute(builder: (context) => ViewPage(memo.id,)));
              },
              onLongPress: (){
                deleteId = memo.id;
                showAlertDialog(parentContext);

              },
              child: Container(
                margin: EdgeInsets.all(28),
                alignment: Alignment.center,
                height: 100,
                child: Column(
                  children: <Widget>[
                    // 감정 선택 시 감정도 보이도록
                    Text(memo.title,
                        style: TextStyle(
                            fontSize: 12
                        )),
                    Text(memo.text,
                        style: TextStyle(
                            fontSize: 12
                        )),
                  ],
                ),
                decoration: BoxDecoration(
                  color: const Color(0xE8EBFF),
                  border: Border.all(
                  ),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3)],
                  borderRadius: BorderRadius.circular(15),

                ),
              ),
            );
          },
        );
      },
      future: loadMemo(),
    );
  }
}