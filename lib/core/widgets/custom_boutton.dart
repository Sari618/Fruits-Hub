import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utlis/app_colors.dart';

class CustomButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String text;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
        style: TextButton.styleFrom(
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: AppColors.primaryColor
          
          ),
         
         
        
        onPressed: onPressed,
        child: Text(
          text,style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}