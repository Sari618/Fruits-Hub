import 'package:flutter/material.dart';
import 'package:fruits_hub/constance.dart';
import 'package:fruits_hub/core/utlis/app_images.dart';
import 'package:fruits_hub/core/widgets/custom_boutton.dart';
import 'package:fruits_hub/core/widgets/custom_text_filed.dart';
import 'package:fruits_hub/features/auth/presntaion/views/widgets/already_have_account.dart';
import 'package:fruits_hub/features/auth/presntaion/views/widgets/or_divider.dart';
import 'package:fruits_hub/features/auth/presntaion/views/widgets/social_login_button.dart';
import 'package:fruits_hub/features/auth/presntaion/views/widgets/terms_and_condtions.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:kHorizntalPadding ),
        child: Column(
          children: [
            const SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'الاسم',
              textInputType: TextInputType.text,
              suffixicon: const Icon(Icons.person),
            ),
           const SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
              suffixicon: const Icon(Icons.email),
            ),
           const SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixicon: const Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
            ),
            const SizedBox(height: 16),
            TermsAndCondtionsWidget(),
            
            const SizedBox(height: 16),
            CustomButton(
              text: 'تسجيل',
              onPressed: () {},
            ),
            const SizedBox(height: 26),
            AlreadyHaveAccountWidget(),
            const SizedBox(height: 16),
            OrDivider(),
            SocialLoginButton(
              title: 'تسجيل الدخول بواسطة جوجل',
              onPressed: () {},
              image: Assets.assetsImagesGoogleIcon ,
            ),
          ],
        ),
      ),
    );
  }
}