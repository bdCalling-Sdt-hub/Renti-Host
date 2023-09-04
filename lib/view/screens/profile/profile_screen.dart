import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/profile/inner_widgets/profile_card.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: const CustomAppBar(
          appBarContent: CustomText(
            text: AppStaticStrings.profile,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => Get.toNamed(AppRoute.editProfileScreen),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.blueNormal,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: const CustomImage(
                                    imageSrc: AppImages.profileImage,
                                    imageType: ImageType.png,
                                    size: 50),
                            ),
                            const CustomText(
                                text: AppStaticStrings.userName,
                                color: AppColors.whiteLight,
                                left: 16,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)
                          ],
                        ),
                        const CustomImage(
                            imageSrc: AppIcons.editProfileIcon, size: 24),
                      ],
                    ),
                  ),
                ),
                const ProfileCard(
                    title: AppStaticStrings.ine,
                    description: "1231 1231 1231 1231",
                    icon: Icons.credit_card_outlined),
                const ProfileCard(
                    title: AppStaticStrings.email,
                    description: "johndoe@gmail.com",
                    icon: Icons.email_outlined),
                const ProfileCard(
                    title: AppStaticStrings.mobile,
                    description: "+52 234354566",
                    icon: Icons.phone),
                const ProfileCard(
                    title: AppStaticStrings.dateOfBirth,
                    description: "12-08-1998",
                    icon: Icons.cake),
                const ProfileCard(
                    title: AppStaticStrings.gender,
                    description: "Female",
                    icon: Icons.female_outlined),
                const ProfileCard(
                    title: AppStaticStrings.address,
                    description: "Privada Calle 109 - Piso 4",
                    icon: Icons.location_on_outlined),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
