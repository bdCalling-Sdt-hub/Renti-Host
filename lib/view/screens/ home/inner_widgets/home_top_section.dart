import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class HomeTopSection extends StatelessWidget {
  const HomeTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.50, color: AppColors.blueLight),
                borderRadius: BorderRadius.circular(8),
              ),
              shadows: const [
                BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: 8,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                      text: AppStaticStrings.totalCar,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                  CustomText(
                      text: AppStaticStrings.num,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      top: 8,
                      color: AppColors.blueNormal),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.50, color: AppColors.blueLight),
                borderRadius: BorderRadius.circular(8),
              ),
              shadows: const [
                BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: 8,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                      text: AppStaticStrings.active,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                  CustomText(
                      text: AppStaticStrings.num,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      top: 8,
                      color: AppColors.greenNormal),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: ShapeDecoration(
              color: AppColors.whiteLight,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.50, color: AppColors.blueLight),
                borderRadius: BorderRadius.circular(8),
              ),
              shadows: const [
                BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: 8,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                      text: AppStaticStrings.reserved,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                  CustomText(
                      text: AppStaticStrings.num,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      top: 8,
                      color: AppColors.redNormal),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
