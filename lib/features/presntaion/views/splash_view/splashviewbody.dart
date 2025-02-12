import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utlis/app_images.dart';
import 'package:fruits_hub/features/presntaion/views/onboradingview/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}




class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
  excuteNavigation();
  super.initState();
  
}
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.assetsImagesPlant),
            SvgPicture.asset(Assets.assetsImagesLogo),
            SvgPicture.asset(Assets.assetsImagesSplashBottom,fit:BoxFit.fill,),
          ],
        ),
      ]
    );
  }
  void excuteNavigation() {
  Future.delayed(const Duration(seconds: 3), () {
    Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
  });
}
}
