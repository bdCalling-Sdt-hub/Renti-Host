import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class UserDetailsTopSection extends StatelessWidget {
  const UserDetailsTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              const CustomImage(
                  imageSrc: AppImages.profileImage,
                  imageType: ImageType.png,
                  size: 64),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: AppStaticStrings.userName,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blueNormal,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: List.generate(
                          5,
                          (index) => const CustomImage(
                            imageSrc: AppImages.starImage,
                            size: 12,
                          ),
                        ),
                      ),
                      const CustomText(text: AppStaticStrings.rating, fontSize: 10, left: 8),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColors.blueLight,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Icon(
                  Icons.call,
                  size: 18,color: AppColors.blueNormal,
                ),
              ),
            ),
            const SizedBox(width: 16),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColors.blueLight,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Icon(
                  Icons.message,
                  size: 18,color: AppColors.blueNormal,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
