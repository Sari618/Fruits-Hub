import 'package:flutter/material.dart';
import 'package:fruits_hub/constance.dart';
import 'package:fruits_hub/core/widgets/custom_text_filed.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizntalPadding),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 24),
          CustomTextFormField(
            hintText: 'البريد الالكتروني',
            textInputType: TextInputType.emailAddress,
            suffixicon: const Icon(Icons.email),
          ),CustomTextFormField(
            hintText: 'كلمة المرور',
            textInputType: TextInputType.visiblePassword,
            suffixicon: const Icon(Icons.remove_red_eye,
            color: Color(0xffC9CECF),),
          ),
        ]),
      ),
    );
  }
}
