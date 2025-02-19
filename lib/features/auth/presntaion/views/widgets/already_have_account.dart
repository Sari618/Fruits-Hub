
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utlis/app_style_text.dart';





class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({
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
                Navigator.pop(context);
              },
            

            text: 'لديك حساب بلفعل؟',
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
                Navigator.pop(context);
              },
            text: 'قم بأنشاء حساب ',
            style:
                TextStyles.semiBold13.copyWith(color: Color(0xFF1B5E37)),
          ),
        ],
      ),
      
      
    );
  }
}
