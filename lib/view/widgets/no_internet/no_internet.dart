import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomImage(imageSrc: AppIcons.noInternet,imageType: ImageType.svg,size: 40),
            CustomText(
              top: 24,
              text: "No Internet Connection Found".tr,
              fontSize: 16,
            ),
            CustomText(
              text: "Check Your Connection.".tr,
              bottom: 60,fontSize: 14,
            ),
          ],
        ),
      ),
    );
  }
}