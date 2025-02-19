import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utlis/app_colors.dart';
import 'package:fruits_hub/core/utlis/app_style_text.dart';
import 'package:fruits_hub/features/auth/presntaion/views/widgets/custom_check_box.dart';
import 'package:fruits_hub/features/auth/presntaion/views/widgets/signup_view.dart';

class TermsAndCondtionsWidget extends StatefulWidget {
  const TermsAndCondtionsWidget({super.key});

  @override
  State<TermsAndCondtionsWidget> createState() =>
      _TermsAndCondtionsWidgetState();
}

class _TermsAndCondtionsWidgetState extends State<TermsAndCondtionsWidget> {
  bool isTermsAndCondtionsChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CustomCheckBox(
        onCheked: (value) {
          isTermsAndCondtionsChecked = value;
          setState(() {});
        },
        isChecked: isTermsAndCondtionsChecked,
      ),
      const SizedBox(width: 16),
      Expanded(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'من خلال تسجيل الدخول أنت توافق على ',
                style: TextStyles.semiBold13.copyWith(color: Color(0xFF949D9E)),
              ),
              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, SignUpView.routeName);
                  },
                text: ' الشروط والأحكام',
                style: TextStyles.semiBold13
                    .copyWith(color: AppColors.lightPrimaryColor),
              ),
              TextSpan(
                text: ' ',
                style: (TextStyles.semiBold13),
              ),
              TextSpan(
                text: 'الخاصة',
                style: TextStyles.semiBold13
                    .copyWith(color: AppColors.lightPrimaryColor),
              ),
              TextSpan(text: ' ', style: TextStyles.semiBold13),
              TextSpan(
                text: 'بنا',
                style: TextStyles.semiBold13
                    .copyWith(color: AppColors.primaryColor),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
