import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:moodie1/database/db.dart';
import 'dart:convert';
import 'package:moodie1/pages/memo.dart';

class EditPage extends StatelessWidget{
  String title = '';
  String text = '';
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: (){},
              ),
            ]
        ),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                TextField(
                  // Q. 질문을 받는 부분
                  style: TextStyle(fontSize: 13),
                  keyboardType: TextInputType.multiline,
                  maxLines: 16,
                  //obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    //api 받아야할 부분
                    labelText: 'Q. 오늘만을 위해 준비한 것이 있다면?',
                  ),
                ),
                TextField(
                  onChanged: (String text){this.text=text;},
                  style: TextStyle(fontSize: 13),
                  keyboardType: TextInputType.multiline,
                  maxLines: 16,
                  //obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '오늘의 답변을 적어주세요!',
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.save),
                  onPressed: saveDB,
                )
              ],
            )
        ));
  }

  Future<void> saveDB() async{
    DBHelper sd = DBHelper();

    var fido = Memo(
      id:Strsha512(DateTime.now().toString()),
      title: this.title,
      text: this.text,
    );
    await sd.insertMemo(fido);

    print(await sd.memos());
  }
  String Strsha512(String text) {
    var bytes = utf8.encode(text); // data being hashed
    var digest = sha512.convert(bytes);
    return digest.toString();

  }

}