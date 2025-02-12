import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_function/on_genrate_route.dart';
import 'package:fruits_hub/features/presntaion/views/splash_view/splash_view.dart';


void main() {
  runApp(const FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp( 
      onGenerateRoute: onGenerateRoute ,
      initialRoute: SplashView.routeName,
      debugShowCheckedModeBanner: false,
    );
  }

}

