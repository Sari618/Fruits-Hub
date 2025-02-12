
import 'package:flutter/material.dart';
import 'package:fruits_hub/features/presntaion/views/splash_view/splashviewbody.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const routeName= "/splash" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SplashViewBody()),
    );
  }
}
