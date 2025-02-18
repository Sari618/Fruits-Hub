import 'package:flutter/material.dart';
import 'package:fruits_hub/constance.dart';
import 'package:fruits_hub/core/services/shared_prefrende_senglton.dart';
import 'package:fruits_hub/core/utlis/app_colors.dart';
import 'package:fruits_hub/core/widgets/custom_boutton.dart';
import 'package:fruits_hub/features/auth/presntaion/views/login_view.dart';
import 'package:fruits_hub/features/presntaion/views/onboradingview/on_bording_page_view.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      {
        currentPage = pageController.page!.round();
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBordingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color:currentPage == 1?
            AppColors.primaryColor :
             AppColors.primaryColor.withValues(alpha: 0.5),
          ),
        ),
        SizedBox(
          height: 43,
        ),
        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizntalPadding),
            child: CustomButton(
              text: 'ابدأ الان ',

              
              onPressed: () {
                Prefs().setBool(kIsOnBordingViewSeen, true);
                Navigator.pushNamed(context, LoginView.routeName);
              },
            ),
          ),
        ),
        SizedBox(
          height: 43,
        )
      ],
    );
  }
}
