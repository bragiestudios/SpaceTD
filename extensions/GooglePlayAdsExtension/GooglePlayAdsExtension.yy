{
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": 562949953421324,
  "extensionVersion": "3.3.4",
  "packageId": "com.yoyogames.googleplayservicesextension",
  "productId": "",
  "author": "",
  "date": "2018-12-07T11:02:37",
  "license": "Free to use, also for commercial games.",
  "description": "",
  "helpfile": "",
  "iosProps": true,
  "tvosProps": false,
  "androidProps": true,
  "installdir": "",
  "files": [
    {"filename":"GoogleMobileAds.ext","origname":"extensions\\admob.ext","init":"","final":"","kind":4,"uncompress":false,"functions":[
        {"externalName":"GoogleMobileAds_Init","kind":11,"help":"GoogleMobileAds_Init( interstitialId, applicationId )","hidden":false,"returnType":2,"argCount":2,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"GoogleMobileAds_Init","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_ShowInterstitial","kind":11,"help":"GoogleMobileAds_ShowInterstitial()","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"GoogleMobileAds_ShowInterstitial","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_LoadInterstitial","kind":11,"help":"GoogleMobileAds_LoadInterstitial()","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"GoogleMobileAds_LoadInterstitial","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_InterstitialStatus","kind":11,"help":"GoogleMobileAds_InterstitialStatus()","hidden":false,"returnType":1,"argCount":0,"args":[],"resourceVersion":"1.0","name":"GoogleMobileAds_InterstitialStatus","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_AddBanner","kind":11,"help":"GoogleMobileAds_AddBanner( bannerAdID, size_type )","hidden":false,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"GoogleMobileAds_AddBanner","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_RemoveBanner","kind":11,"help":"GoogleMobileAds_RemoveBanner()","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"GoogleMobileAds_RemoveBanner","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_MoveBanner","kind":11,"help":"GoogleMobileAds_MoveBanner(display_x, display_y)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"GoogleMobileAds_MoveBanner","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_BannerGetWidth","kind":11,"help":"GoogleMobileAds_BannerGetWidth()","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"GoogleMobileAds_BannerGetWidth","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_BannerGetHeight","kind":11,"help":"GoogleMobileAds_BannerGetHeight()","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"GoogleMobileAds_BannerGetHeight","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_UseTestAds","kind":11,"help":"GoogleMobileAds_UseTestAds( use_test_ads, deviceId );","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            1,
          ],"resourceVersion":"1.0","name":"GoogleMobileAds_UseTestAds","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_AddBannerAt","kind":11,"help":"GoogleMobileAds_AddBannerAt(bannerAdId, sizeType, x, y );  banner will initially be invisible if x,y < 0","hidden":false,"returnType":2,"argCount":4,"args":[
            1,
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"GoogleMobileAds_AddBannerAt","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_LoadRewardedVideo","kind":11,"help":"","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"resourceVersion":"1.0","name":"GoogleMobileAds_LoadRewardedVideo","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_ShowRewardedVideo","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"GoogleMobileAds_ShowRewardedVideo","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_RewardedVideoStatus","kind":11,"help":"","hidden":false,"returnType":1,"argCount":0,"args":[],"resourceVersion":"1.0","name":"GoogleMobileAds_RewardedVideoStatus","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"GoogleMobileAds_HideBanner","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_ShowBanner","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"GoogleMobileAds_ShowBanner","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_ConsentUpdate","kind":11,"help":"GoogleMobileAds_ConsentUpdate(publisherIds, privacyPolicyURL, personalisedAds, noPersonalisedAds, adFree)","hidden":false,"returnType":2,"argCount":5,"args":[
            1,
            1,
            2,
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"GoogleMobileAds_ConsentUpdate","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_ConsentFormShow","kind":11,"help":"GoogleMobileAds_ConsentFormShow(privacyPolicyURL, personalisedAds, noPersonalisedAds, adFree)","hidden":false,"returnType":2,"argCount":4,"args":[
            1,
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"GoogleMobileAds_ConsentFormShow","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_ConsentSetUserUnderAge","kind":11,"help":"GoogleMobileAds_ConsentSetUserUnderAge(isUnderAge)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"GoogleMobileAds_ConsentSetUserUnderAge","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_ConsentIsUserUnderAge","kind":11,"help":"GoogleMobileAds_ConsentIsUserUnderAge()","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"GoogleMobileAds_ConsentIsUserUnderAge","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_ConsentIsUserInEEA","kind":11,"help":"GoogleMobileAds_ConsentIsUserInEEA()","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"GoogleMobileAds_ConsentIsUserInEEA","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_ConsentDebugAddDevice","kind":11,"help":"GoogleMobileAds_ConsentDebugAddDevice(id)","hidden":false,"returnType":2,"argCount":1,"args":[
            1,
          ],"resourceVersion":"1.0","name":"GoogleMobileAds_ConsentDebugAddDevice","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_ConsentDebugSetDeviceInEEA","kind":11,"help":"GoogleMobileAds_ConsentDebugSetDeviceInEEA(isInEEA)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"GoogleMobileAds_ConsentDebugSetDeviceInEEA","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_ConsentGetAllowPersonalizedAds","kind":11,"help":"GoogleMobileAds_ConsentGetAllowPersonalizedAds()","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"GoogleMobileAds_ConsentGetAllowPersonalizedAds","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GoogleMobileAds_ConsentSetAllowPersonalizedAds","kind":11,"help":"GoogleMobileAds_ConsentSetAllowPersonalizedAds(allowPersonalized)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"GoogleMobileAds_ConsentSetAllowPersonalizedAds","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        {"value":"1","hidden":false,"resourceVersion":"1.0","name":"GoogleMobileAds_Banner","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"2","hidden":false,"resourceVersion":"1.0","name":"GoogleMobileAds_MRect","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"3","hidden":false,"resourceVersion":"1.0","name":"GoogleMobileAds_Full_Banner","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"4","hidden":false,"resourceVersion":"1.0","name":"GoogleMobileAds_Leaderboard","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"5","hidden":false,"resourceVersion":"1.0","name":"GoogleMobileAds_Skyscraper","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"9817","hidden":false,"resourceVersion":"1.0","name":"GoogleMobileAds_ASyncEvent","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"6","hidden":false,"resourceVersion":"1.0","name":"GoogleMobileAds_Smart_Banner","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"7","hidden":false,"resourceVersion":"1.0","name":"GoogleMobileAds_Adaptive_Banner","tags":[],"resourceType":"GMExtensionConstant",},
      ],"ProxyFiles":[],"copyToTargets":562949953421324,"order":[
        {"name":"GoogleMobileAds_Init","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_ShowInterstitial","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_LoadInterstitial","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_InterstitialStatus","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_AddBanner","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_RemoveBanner","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_MoveBanner","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_BannerGetWidth","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_BannerGetHeight","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_UseTestAds","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_AddBannerAt","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_LoadRewardedVideo","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_ShowRewardedVideo","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_RewardedVideoStatus","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_HideBanner","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_ShowBanner","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_ConsentUpdate","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_ConsentFormShow","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_ConsentSetUserUnderAge","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_ConsentIsUserUnderAge","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_ConsentIsUserInEEA","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_ConsentDebugAddDevice","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_ConsentDebugSetDeviceInEEA","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_ConsentGetAllowPersonalizedAds","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
        {"name":"GoogleMobileAds_ConsentSetAllowPersonalizedAds","path":"extensions/GooglePlayAdsExtension/GooglePlayAdsExtension.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
  ],
  "classname": "GoogleMobileAdsExt",
  "tvosclassname": "",
  "tvosdelegatename": "",
  "iosdelegatename": "",
  "androidclassname": "GooglePlayAdsExtension",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "\"$(inherited)\"",
  "tvosmaclinkerflags": "",
  "iosplistinject": "<key>NSAppTransportSecurity</key>\r\n<dict>\r\n    <key>NSAllowsArbitraryLoads</key>\r\n    <true/>\r\n    <key>NSAllowsArbitraryLoadsForMedia</key>\r\n    <true/>\r\n    <key>NSAllowsArbitraryLoadsInWebContent</key>\r\n    <true/>\r\n</dict>\r\n <key>GADApplicationIdentifier</key>\r\n    <string>ca-app-pub-3940256099942544~1458002511</string>\r\n<key>SKAdNetworkItems</key>\r\n  <array>\r\n    <dict>\r\n      <key>SKAdNetworkIdentifier</key>\r\n      <string>cstr6suwn9.skadnetwork</string>\r\n    </dict>\r\n  </array>",
  "tvosplistinject": "",
  "androidinject": "<activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />\r\n <meta-data\r\n            android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\r\n            android:value=\"ca-app-pub-3940256099942544~3347511713\"/>",
  "androidmanifestinject": "",
  "androidactivityinject": "",
  "gradleinject": "implementation  'com.google.android.gms:play-services-ads:20.0.0'\r\nimplementation  'com.google.android.ads.consent:consent-library:1.0.8'",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "copyToTargets": 562949953421324,
  "iosCocoaPods": "pod 'Google-Mobile-Ads-SDK', '~> 8.1'\r\npod 'PersonalizedAdConsent', '~> 1.0'",
  "tvosCocoaPods": "",
  "iosCocoaPodDependencies": "",
  "tvosCocoaPodDependencies": "",
  "parent": {
    "name": "Extensions",
    "path": "folders/Conf/Extensions.yy",
  },
  "resourceVersion": "1.2",
  "name": "GooglePlayAdsExtension",
  "tags": [],
  "resourceType": "GMExtension",
}