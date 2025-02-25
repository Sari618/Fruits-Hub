
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utlis/app_style_text.dart';
import 'package:fruits_hub/features/auth/presntaion/views/widgets/signup_view.dart';
import 'package:fruits_hub/features/presntaion/ads/ad.dart';




class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        
        children: [
          TextSpan(

            recognizer: TapGestureRecognizer()
              ..onTap = () {
                
                Navigator.pushNamed(context, SignUpView.routeName);
              },
            

            text: 'ليس لديك حساب؟',
            style:
                TextStyles.semiBold13.copyWith(color: Color(0xFF949D9E)),
          ),
          TextSpan(

            text: ' ',
            style:
                TextStyles.semiBold13.copyWith(color: Color(0xFF949D9E)),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Ads().showAds();
                Navigator.pushNamed(context, SignUpView.routeName);
              },
            text: 'قم بإنشاء حساب',
            style:
                TextStyles.semiBold13.copyWith(color: Color(0xFF1B5E37)),
          ),
        ],
      ),
      
      
    );
  }
}
