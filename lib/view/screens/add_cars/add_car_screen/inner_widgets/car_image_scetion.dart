import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';

class CarImageSection extends StatelessWidget {
  const CarImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.blueLight,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_photo_alternate_outlined, size: 40, color: AppColors.blueNormal),
                  //const SizedBox(height: 16),
                  /*CustomElevatedButton(
                                onPressed: () {},
                                titleText: AppStaticStrings.uploadPhoto,
                                buttonWidth: double.maxFinite,
                                titleSize: 10,buttonRadius: 4,
                                buttonHeight: 32),*/
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppColors.blueLight,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_photo_alternate_outlined, size: 24, color: AppColors.blueNormal),
                        /*const SizedBox(height: 16),
                                  CustomElevatedButton(
                                      onPressed: () {},
                                      titleText: AppStaticStrings.uploadCarPhoto,
                                      buttonWidth: double.maxFinite,
                                      titleSize: 12,
                                      buttonHeight: 32),*/
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppColors.blueLight,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_photo_alternate_outlined, size: 24, color: AppColors.blueNormal),
                        /*const SizedBox(height: 16),
                                  CustomElevatedButton(
                                      onPressed: () {},
                                      titleText: AppStaticStrings.uploadCarPhoto,
                                      buttonWidth: double.maxFinite,
                                      titleSize: 12,
                                      buttonHeight: 32),*/
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
