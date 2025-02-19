import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utlis/app_style_text.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            color: Colors.grey,
            height: 1.5,
          ),
        ),
       const SizedBox(width: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "أو",
            style: TextStyles.semiBold13.copyWith(color: Color(0xFF141F1F), fontSize: 16),
          ),
        ),
         const SizedBox(width: 16),
        Expanded(
          child: Divider(
            color: Colors.grey,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}