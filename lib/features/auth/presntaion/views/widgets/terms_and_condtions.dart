import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/constance.dart';
import 'package:fruits_hub/core/utlis/app_colors.dart';
import 'package:fruits_hub/core/utlis/app_style_text.dart';
import 'package:fruits_hub/features/auth/presntaion/views/widgets/signup_view.dart';

class TermsAndCondtionsWidget extends StatelessWidget {
  const TermsAndCondtionsWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
        offset: const Offset(14, 0),
      child: Row(
        children :[
          Checkbox(value: false, onChanged: (value){
      
          }),
          SizedBox(
            width: MediaQuery.sizeOf(context).width - (kHorizntalPadding*2)-48,
            child: Text.rich(
                  TextSpan(
            
            children: [
              TextSpan(
               
                text: 'من خلال تسجيل الدخول أنت توافق على ',
                style:
                    TextStyles.semiBold13.copyWith(color: Color(0xFF949D9E)),
              ),
              
             
              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, SignUpView.routeName);
                  },
                text: ' الشروط والأحكام',
                style:
                    TextStyles.semiBold13.copyWith(color:AppColors.lightPrimaryColor),
              ),
              TextSpan(
                
                text: ' ',
                style:
                    (TextStyles.semiBold13),
              ),
              TextSpan(
                
                text: 'الخاصة',
                style:
                    TextStyles.semiBold13.copyWith(color: AppColors.lightPrimaryColor),
              ),
                TextSpan(
                
                text: ' ',
                style:
                    TextStyles.semiBold13),
             
              TextSpan(
                
                text: 'بنا',
                style:
                    TextStyles.semiBold13.copyWith(color: AppColors.primaryColor),
              ),
            
            ],
                  ),
                  
                  
                ),
          )
        ]
      ),
    );
  }
}