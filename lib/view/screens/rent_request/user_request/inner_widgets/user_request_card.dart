import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class UserRequestCard extends StatelessWidget {
  const UserRequestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomImage(imageSrc: AppImages.profileImage, imageType: ImageType.png, size: 50),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(text: AppStaticStrings.userName, fontSize: 18, fontWeight: FontWeight.w500),
                const SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: List.generate(5,
                            (index) =>
                            const CustomImage(
                              imageSrc: AppImages.starImage,
                              size: 12,
                            ),
                      ),
                    ),
                    const CustomText(text: AppStaticStrings.rating,fontSize: 10,left: 8),
                  ],
                ),
                const SizedBox(height: 8),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.calendar_month, size: 14, color: AppColors.whiteDarkActive),
                    CustomText(text: "06 aug 2023-07 aug 2023",color: AppColors.whiteDarkActive,left: 8),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomElevatedButton(
                onPressed: () {},
                titleText: AppStaticStrings.cancel,
                buttonColor: AppColors.redLight,
                titleColor: AppColors.redNormal,
                buttonHeight: 48,
                titleWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: CustomElevatedButton(
                onPressed: () {},
                titleText: AppStaticStrings.approve,
                buttonHeight: 48,
                titleWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
