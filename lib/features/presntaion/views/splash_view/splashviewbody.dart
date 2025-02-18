import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/services/shared_prefrende_senglton.dart';
import 'package:fruits_hub/core/utlis/app_images.dart';
import 'package:fruits_hub/features/auth/presntaion/views/login_view.dart';
import 'package:fruits_hub/features/presntaion/views/onboradingview/on_boarding_view.dart';
import 'package:fruits_hub/constance.dart';

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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children:[
        
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.assetsImagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.assetsImagesLogo),
        SvgPicture.asset(Assets.assetsImagesSplashBottom),
        

      
      ]
    );
  }
  void excuteNavigation() {
    bool? isOnBordingViewSeen = Prefs().getBool(kIsOnBordingViewSeen);
  Future.delayed(const Duration(seconds: 3), () {
    if (isOnBordingViewSeen != null && isOnBordingViewSeen) {
  Navigator.pushReplacementNamed(context, LoginView.routeName);
}else{
  Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
}
  });
}
}
