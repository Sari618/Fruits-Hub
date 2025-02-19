import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presntaion/views/login_view.dart';
import 'package:fruits_hub/features/auth/presntaion/views/widgets/signup_view.dart';
import 'package:fruits_hub/features/presntaion/views/onboradingview/on_boarding_view.dart';
import 'package:fruits_hub/features/presntaion/views/splash_view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());

    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
