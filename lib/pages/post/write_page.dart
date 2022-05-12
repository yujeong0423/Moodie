import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:moodie1/components/custom_text_form_field.dart';
// import 'package:moodie1/components/custom_textarea.dart';
// import 'package:moodie1/pages/post/home_page.dart';
// import 'package:moodie1/pages/post/homescreen.dart';
// import 'package:moodie1/util/validator_util.dart';
// import 'package:get/get.dart';
// import '../../components/custom_elevated_button.dart';

class WritePage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key:_formKey,
          child: ListView(
          children: [
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
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Text(
                "오늘의 문답",
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff5973FF)
                ),
              ),
            ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 15, 30, 10),
            width: 340,
            height: 400,
            decoration: BoxDecoration(
              color: Color(0xffE8EBFF),
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
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 350),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/happy.png'),
                  ),
                ),
                child: Container(
                    margin: EdgeInsets.fromLTRB(280, 365, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.check,
                          color: Colors.black,
                        ),
                      ],
                    )
                ),
              ),

            // child:TextField(
            //   decoration: new InputDecoration(
            //       border: InputBorder.none,
            //       focusedBorder: InputBorder.none),
            //   maxLength: 200,
            //     maxLines: 18,
            //     style: TextStyle(
            //         letterSpacing: 1.2, fontSize: 15, fontWeight: FontWeight.bold,
            //         color: Colors.black)
            // ),
          ),
            // CustomTextFormField(
              //   hint: "Title",
              //   funvalidator: validateTitle(),
              // ),
              // CustomTextArea(
              //     hint: "Content",
              //     funvalidator: validateContent()
              // ),
              // CustomElevatedButton(
              //   text: "글쓰기 완료",
              //   funpageRoute: (){
              //     if(_formKey.currentState!.validate()) {
              //       Get.off(HomeScreen());
              //     }
              //     },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
