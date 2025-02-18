import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utlis/app_style_text.dart';

AppBar buildAppBar(context ,{required String title}) {
          return AppBar(
            backgroundColor: Colors.white,
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back_ios_new)),
            title: Text(title, textAlign: TextAlign.center,style: TextStyles.bold19
            ),
          );
        } 