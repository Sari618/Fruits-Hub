import 'package:fruits_hub/core/mangers/ad_manger.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Ads {
  InterstitialAd? _interstitialAd;
  void showAds() {
    InterstitialAd.load(
        adUnitId: AdManger.interstitalAd,
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
          _interstitialAd = ad;
          if (_interstitialAd != null) {
            _interstitialAd!.show();
          }
          ad.fullScreenContentCallback =
              FullScreenContentCallback(onAdDismissedFullScreenContent: (ad) {
            ad.dispose();
          }, onAdFailedToShowFullScreenContent: (ad, error) {
            ad.dispose();
          });
        }, onAdFailedToLoad: (error) {
          print(error);
        }));

  }
  
  void showAppOpenAd() {
    AppOpenAd? _appOpenAd;
    AppOpenAd.load(
        adUnitId: AdManger.openAd,
        request: AdRequest(),
        adLoadCallback: AppOpenAdLoadCallback(
            onAdLoaded: (ad) {
              _appOpenAd = ad;
              if (_appOpenAd != null) {
                _appOpenAd!.show();
              }
              ad.fullScreenContentCallback = FullScreenContentCallback(
                onAdDismissedFullScreenContent: (ad) {
                  ad.dispose();
                },
                onAdFailedToShowFullScreenContent: (ad, error) {
                  ad.dispose();
                },
              );
            },
            onAdFailedToLoad: (error) {},
        ),
      
    );
  }
}
