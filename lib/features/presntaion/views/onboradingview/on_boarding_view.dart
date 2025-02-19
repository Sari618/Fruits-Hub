import 'package:flutter/material.dart';
import 'package:fruits_hub/features/presntaion/views/onboradingview/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const routeName= "/onboardingView " ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: const OnBoardingViewBody()),
    );
  }
}