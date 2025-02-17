import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utlis/app_images.dart';
import 'package:fruits_hub/features/presntaion/views/onboradingview/page_view_item.dart';

class OnBordingPageView extends StatelessWidget {
  const OnBordingPageView({super.key, this.pageController});
  final  pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewIteam(
          isVisbile: (pageController.hasClients ? pageController.page!.round(): 0)!=0,
            image: Assets.assetsImagesPageViewItem1Image,
            backgroundImage: Assets.assetsImagesPageViewItem1BackgroundImage,
            subtitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('مرحبًا بك في FruitHUB'),
                Text('Fruit'),
                Text('HUB'),
              ],
            )),
            PageViewIteam(
              isVisbile: (pageController.hasClients ? pageController.page!.round(): 0)!=0,
            image: Assets.assetsImagesPageViewItem2Image,
            backgroundImage: Assets.assetsImagesPageViewItem2BackgroundImage,
            subtitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ابحث و تسوق',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF0C0D0D),
                fontSize: 24,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w700
                ,
                height: 0,
                ),
                ),

              ],
            )),
      ],
    );
  }
}
