import 'package:flutter/material.dart';
import 'package:moodie1/components/custom_elevated_button.dart';
import 'package:moodie1/components/custom_text_form_field.dart';
import 'package:moodie1/pages/user/login_page.dart';
import 'package:get/get.dart';
import 'package:moodie1/util/validator_util.dart';
import 'package:validators/validators.dart';

class JoinPage extends StatelessWidget {

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
            _joinForm(),
          ],
        ),
      ),
    );
  }

  Widget _joinForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hint: "Username",
            funvalidator: validateUsername(),
          ),
          CustomTextFormField(
            hint: "Password",
            funvalidator: validatePassword(),
          ),
          CustomTextFormField(hint: "Email",
            funvalidator: validateEmail(),
          ),
          CustomElevatedButton(
            text: "회원가입",
            funpageRoute: (){
              if(_formKey.currentState!.validate()) {
                Get.to(LoginPage());
              }
            },
          ),
        ],
      )
    );
  }
}

