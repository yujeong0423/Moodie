import 'package:flutter/material.dart';
import 'package:moodie1/components/custom_text_form_field.dart';
import 'package:moodie1/components/custom_textarea.dart';
import 'package:moodie1/pages/post/home_page.dart';
import 'package:moodie1/util/validator_util.dart';
import 'package:get/get.dart';
import '../../components/custom_elevated_button.dart';

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
              height: 50,
              child: Text(
                "Moodie",
                style: TextStyle(
                fontSize: 30,
                color: Color(0xff5973FF)
              ),
            ),
          ),
              CustomTextFormField(
                hint: "Title",
                funvalidator: validateTitle(),
              ),
              CustomTextArea(
                  hint: "Content",
                  funvalidator: validateContent()
              ),
              CustomElevatedButton(
                text: "글쓰기 완료",
                funpageRoute: (){
                  if(_formKey.currentState!.validate()) {
                    Get.off(HomePage());
                  }
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
