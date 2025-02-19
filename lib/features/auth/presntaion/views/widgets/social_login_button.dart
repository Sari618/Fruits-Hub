import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utlis/app_style_text.dart';

class SocialLoginButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final String image;

  const SocialLoginButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 56,
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Color(0xFFDCDEDE),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: onPressed,
          child: ListTile(
            visualDensity: VisualDensity(vertical:VisualDensity.minimumDensity),
            leading: SvgPicture.asset(image),
            title: Text(
              textAlign: TextAlign.center,
              title,
              style: TextStyles.semiBold16,
            ),
          ),
        ));
  }
}
