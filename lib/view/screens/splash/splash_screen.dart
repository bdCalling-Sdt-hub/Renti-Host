import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/device_utils.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    DeviceUtils.splashUtils();
   // rememberMe();
    super.initState();
  }

  // rememberMe() async{
  //   final prefs = await SharedPreferences.getInstance();
  //   final accessToken = prefs.getString(SharedPreferenceHelper.accessTokenKey);
  //   if(accessToken != null && accessToken.isNotEmpty){
  //     Timer(const Duration(seconds: 1), () => Get.offAndToNamed(AppRoute.navigation));
  //   }
  // }

  @override
  void dispose() {
    DeviceUtils.onboardUtils();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            decoration: const BoxDecoration(
              image: DecorationImage(
                opacity: 0.5,
                image: AssetImage(AppImages.splashImage),
                fit: BoxFit.fill,
                colorFilter:
                ColorFilter.mode(AppColors.blueNormal, BlendMode.dstATop),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(),
                const CustomImage(
                    imageSrc: AppImages.logoImage,
                    imageType: ImageType.png,
                    size: 200),
                const Spacer(),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoute.selectLanguageScreen);
                      },
                      child:   Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                            text: "english1".tr,
                            color: AppColors.whiteLight,
                            fontSize: 16,
                            right: 8,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppColors.whiteLight,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    CustomElevatedButton(
                      onPressed: () async{
                          final prefs = await SharedPreferences.getInstance();
                          final accessToken = prefs.getString(SharedPreferenceHelper.accessTokenKey);
                          if(accessToken == null || accessToken.isEmpty){
                            Get.toNamed(AppRoute.signInScreen);
                          }
                          else{
                            Get.offAndToNamed(AppRoute.navigation);
                          }

                      },
                      titleText: "Get Started".tr,
                      buttonWidth: double.maxFinite,
                      buttonColor: AppColors.whiteLight,
                      titleColor: AppColors.blueNormal,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
