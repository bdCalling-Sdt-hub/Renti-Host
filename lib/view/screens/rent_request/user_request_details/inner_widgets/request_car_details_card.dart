import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class RequestCarDetailsCard extends StatelessWidget {
  const RequestCarDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
            text: AppStaticStrings.carDetails,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.blackNormal),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsetsDirectional.symmetric(vertical: 16),
          padding: const EdgeInsetsDirectional.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.blueLight, width: 1),
            color: AppColors.whiteLight,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: AppColors.shadowColor,
                blurRadius: 10,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Toyota Harrier",
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blueDark,
                      textAlign: TextAlign.start,
                    ),
                    CustomText(
                      text: "License no: 55-43-TBV ",
                      color: AppColors.whiteDarkActive,
                      top: 8,
                      bottom: 8,
                      textAlign: TextAlign.start,
                    ),
                    Row(
                      children: [
                        CustomImage(imageSrc: AppIcons.fuelIcon, size: 16),
                        Row(
                          children: [
                            CustomText(
                              text: "10",
                              color: AppColors.whiteDarkActive,
                              left: 8,
                              textAlign: TextAlign.start,
                            ),
                            CustomText(
                                text: AppStaticStrings.km,
                                color: AppColors.whiteDarkActive),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "\$",
                          color: AppColors.whiteDarkActive,
                        ),
                        CustomText(
                          text: "25",
                          color: AppColors.whiteDarkActive,
                        ),
                        CustomText(
                          text: AppStaticStrings.hr,
                          color: AppColors.whiteDarkActive,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: CustomImage(
                  imageSrc: AppImages.redCarImage,
                  imageType: ImageType.png,
                  size: 66,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
