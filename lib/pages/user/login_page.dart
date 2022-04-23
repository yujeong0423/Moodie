import 'package:flutter/material.dart';
import 'package:moodie1/components/custom_elevated_button.dart';
import 'package:moodie1/components/custom_text_form_field.dart';
import 'package:get/get.dart';
import 'package:moodie1/pages/post/home_page.dart';
import 'package:moodie1/util/validator_util.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              child: Text(
                "Moodie",
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff5973FF)
                ),
              ),
            ),
            _loginForm(),
          ],
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hint: "Username",
            funvalidator: validateUsername()
          ),
          CustomTextFormField(
            hint: "Password",
            funvalidator: validatePassword()
          ),
          CustomElevatedButton(
            text: "로그인",
            funpageRoute: (){
              if(_formKey.currentState!.validate()) {
                Get.to(HomePage());
              }
            },
          ),
        ],
      )
    );
  }
}

