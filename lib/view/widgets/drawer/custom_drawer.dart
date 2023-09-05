import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}


class _CustomDrawerState extends State<CustomDrawer> {
  bool changeColor = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 230,
      backgroundColor: AppColors.whiteLight,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Drawer Top Section
            const SizedBox(height: 30),
            const CustomImage(imageSrc: AppImages.profileImage, imageType: ImageType.png, size: 50),
            const CustomText(text: AppStaticStrings.userName, fontSize: 16, fontWeight: FontWeight.w500,top: 8),
            const CustomText(text: AppStaticStrings.userPhone, fontSize: 12, color: AppColors.whiteDarkHover,top: 8,bottom: 8),
            const Divider(color: AppColors.blackLightHover,thickness: 1),


            //Add cars Section
            GestureDetector(
              onTap: () => Get.toNamed(AppRoute.allReview),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                    color: AppColors.whiteLight,
                    borderRadius: BorderRadius.circular(4)
                ),
                child: const Row(
                  children: [
                    CustomImage(imageSrc: AppIcons.addCar,size: 18),
                    CustomText(text: AppStaticStrings.addCar,color: AppColors.whiteDarkHover,left: 8)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
