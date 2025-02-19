import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utlis/app_style_text.dart';

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
            text: 'قم بإنشاء حساب',
            style:
                TextStyles.semiBold13.copyWith(color: Color(0xFF1B5E37)),
          ),
        ],
      ),
      
      
    );
  }
}
