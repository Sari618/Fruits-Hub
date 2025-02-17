import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utlis/app_images.dart';
import 'package:fruits_hub/features/presntaion/views/onboradingview/page_view_iteam.dart';

class OnBordingPageView extends StatelessWidget {
  const OnBordingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewIteam(
            image: Assets.assetsImagesPageViewItem1Image,
            backgroundImage: Assets.assetsImagesPageViewItem1BackgroundImage,
            subtitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            title: Row(
              children: [
                Text('مرحبًا بك في FruitHUB'),
                Text('Fruit'),
                Text('HUB'),
              ],
            ))
      ],
    );
  }
}
