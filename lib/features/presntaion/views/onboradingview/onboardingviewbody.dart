import 'package:flutter/material.dart';
import 'package:fruits_hub/features/presntaion/views/onboradingview/on_bording_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child:  
        OnBordingPageView())
      ],
    );
  }
}