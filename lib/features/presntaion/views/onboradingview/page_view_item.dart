import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/constance.dart';
import 'package:fruits_hub/core/services/shared_prefrende_senglton.dart';
import 'package:fruits_hub/core/utlis/app_colors.dart';
import 'package:fruits_hub/core/utlis/app_images.dart';
import 'package:fruits_hub/core/utlis/app_style_text.dart';
import 'package:fruits_hub/features/auth/presntaion/views/login_view.dart';

class PageViewIteam extends StatelessWidget {
  const PageViewIteam(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.subtitle,
      required this.title,
      required this.isVisbile});
  final String image, backgroundImage;
  final String subtitle;
  final Widget title;
  final bool isVisbile;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Stack(
          children: [
            Positioned.fill(
                child: SvgPicture.asset(
              Assets.assetsImagesPageViewItem1BackgroundImage,
              fit: BoxFit.fill,
            )),
            Positioned.fill(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  image,
                )),
            Visibility(
              visible: isVisbile,
              child: GestureDetector(
                onTap: () {
                  Prefs().setBool(kIsOnBordingViewSeen, true);
                   Navigator.pushNamed(context, LoginView.routeName);
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('تخطي',
                      style: TextStyles.regular13.copyWith(
                        color: const Color(0xFF949D9E),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 64,
      ),
      title,
      const SizedBox(
        height: 24,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyles.semiBold13.copyWith(color: AppColors.blackColor),
        ),
      )
    ]);
  }
}
