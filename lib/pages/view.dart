import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:moodie1/pages/memo.dart';
import 'package:moodie1/database/db.dart';

class ViewPage extends StatelessWidget {
  final String id;
  // findMemo(id)[0]

  const ViewPage(this.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: (){},
              ),
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: (){},
              ),
            ]
        ),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Loadbuilder()
        ));
  }

  Future<List<Memo>> loadMemo(String id) async {
    DBHelper sd = DBHelper();
    return await sd.findMemo(id);
  }

  Loadbuilder() {
    return FutureBuilder<List<Memo>>(
      future: loadMemo(id),
      builder: (BuildContext context, AsyncSnapshot<List<Memo>> snapshot){
        if (snapshot.data==null) {
          return Container(
              child: Text("데이터를 불러올 수 없습니다.",
                  style: TextStyle(fontSize:14),textAlign: TextAlign.center));

        } else{
          Memo memo= snapshot.data![0];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text("Q. "+memo.title),
              Padding(padding: EdgeInsets.all(10)),
              Text("A. "+memo.text),
              Expanded(child: Text(memo.text)),
            ],
          );
        }
      },
    );
  }
}