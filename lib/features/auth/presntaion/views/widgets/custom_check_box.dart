import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utlis/app_colors.dart';
import 'package:fruits_hub/core/utlis/app_images.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isChecked, required this.onCheked});
 final bool isChecked;
 final ValueChanged<bool> onCheked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onCheked ( !isChecked);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: Duration(milliseconds: 100),
        decoration: ShapeDecoration(
            color:isChecked?AppColors.primaryColor : Colors.white,
            shape: RoundedRectangleBorder(
              side:  BorderSide(width: 1.50, color:isChecked ?Colors.transparent : Color(0xFFDCDEDE)),
              borderRadius: BorderRadius.circular(8),
            )),
            child:isChecked ? Padding(
              padding: const EdgeInsets.all(2.0),
              child: SvgPicture.asset(Assets.assetsImagesCheck),
            ):SizedBox(),
      ),
    );
  }
}
