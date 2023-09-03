import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class AddCarBottomSection extends StatelessWidget {
  const AddCarBottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DottedBorder(
          padding: const EdgeInsets.all(0),
          borderType: BorderType.RRect,
          radius: const Radius.circular(8),
          color: AppColors.blueLightActive,
          strokeWidth: 1,
          dashPattern: const [10, 10],
          child: Container(
            padding: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: AppColors.blueLight,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                const Icon(Icons.add_photo_alternate_outlined, color: AppColors.blueNormal, size: 50),
                const SizedBox(height: 16),
                CustomElevatedButton(
                  onPressed: () {},
                  titleText: AppStaticStrings.upload,
                  buttonHeight: 48,
                  buttonWidth: double.maxFinite,
                ),
              ],
            ),
          ),
        ),
        const CustomText(
            text: AppStaticStrings.addCarList,
            bottom: 80,
            textAlign: TextAlign.start,
            top: 16),
      ],
    );
  }
}
