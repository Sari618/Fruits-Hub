import 'package:flutter/material.dart';
import 'package:fruits_hub/constance.dart';
import 'package:fruits_hub/core/utlis/app_images.dart';
import 'package:fruits_hub/core/widgets/custom_boutton.dart';
import 'package:fruits_hub/core/widgets/custom_text_filed.dart';
import 'package:fruits_hub/core/utlis/app_style_text.dart';
import 'package:fruits_hub/core/utlis/app_colors.dart';
import 'package:fruits_hub/features/auth/presntaion/views/widgets/dont_have_account_widget.dart';
import 'package:fruits_hub/features/auth/presntaion/views/widgets/or_divider.dart';
import 'package:fruits_hub/features/auth/presntaion/views/widgets/social_login_button.dart';
import 'package:fruits_hub/features/presntaion/ads/banner_ads.dart';
import 'package:fruits_hub/features/presntaion/ads/ad.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizntalPadding),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 24),
            
            CustomTextFormField(
              hintText: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
              suffixicon: const Icon(Icons.email),
            ),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixicon: const Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمه المرور؟',
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.lightPrimaryColor),
                ),
              ],
            ),
            const SizedBox(height: 33),
            CustomButton(
              text: 'تسجيل الدخول',
              onPressed: () {},
            ),
            const SizedBox(height: 33),
            DontHaveAnAccountWidget(),
            const SizedBox(height: 16),
            OrDivider(),
            SocialLoginButton(
              title: 'تسجيل الدخول بواسطة جوجل',
              onPressed: () {},
              image: Assets.assetsImagesGoogleIcon ,
            ),
            SocialLoginButton(
              title: 'التسجيل بواسطة فيسبوك',
              onPressed: () {},
              image: Assets.assetsImagesFacebookIcon ,
            ),
            SocialLoginButton(
              title: 'تسجيل بواسطة ابل ',
              onPressed: () {},
              image: Assets.assetsImagesApplIcon ,
            ),
            ElevatedButton(
              onPressed: () {
               Ads().showAds();
              },
              child: const Text(' اظهار اعلان',style: TextStyle(color: Colors.black),),
            ),
            const
            SizedBox(
              height:70
            ),
            BannerAds() ,
            
          ]
          ),
        ),
      )
    );
  }
}

