import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:renti_host/view/widgets/textfield/custom_textfield.dart';

class CardDetailsScreen extends StatelessWidget {
  const CardDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: const CustomAppBar(
          appBarContent: CustomBack(
            text: "Card Name",
            color: AppColors.blackNormal,
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                    text: 'Account Holder Name', fontSize: 16, bottom: 12),
                CustomTextField(
                  textInputAction: TextInputAction.done,
                  hintText: "Enter email".tr,
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      color: AppColors.whiteNormalActive),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field can not be empty".tr;
                    } else if (!value.contains(RegExp('@'))) {
                      return "Please enter a valid email".tr;
                    } else {
                      return null;
                    }
                  },
                ),

                CustomText(
                    text: "Phone Number".tr, bottom: 12, top: 8),
                //Country Flag and Enter Phone Number TextField
                SizedBox(
                  height: 56,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.whiteLight,
                          border: Border.all(
                              color: AppColors.whiteDark,
                              width: 1.0,
                              style: BorderStyle.solid),
                        ),
                        child: const Row(
                          children: [
                            CustomImage(imageSrc: AppImages.flagImage, size: 40),
                            CustomText(
                              text: "+52",
                              left: 10,
                              color: AppColors.whiteNormalActive,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: CustomTextField(
                          keyboardType: TextInputType.phone,
                          hintText: "Enter phone number".tr,
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.whiteNormalActive,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                 CustomText(text: "Email".tr, top: 8, bottom: 12),
                CustomTextField(
                  textInputAction: TextInputAction.done,
                  hintText: "Enter email".tr,
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      color: AppColors.whiteNormalActive),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field can not be empty".tr;
                    } else if (!value.contains(RegExp('@'))) {
                      return "Please enter a valid email".tr;
                    } else {
                      return null;
                    }
                  },
                ),
                CustomText(
                    text: "Enter Account Number".tr,
                    top: 8,
                    bottom: 12),
                CustomTextField(
                  textInputAction: TextInputAction.done,
                  hintText: "Enter email".tr,
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      color: AppColors.whiteNormalActive),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field can not be empty".tr;
                    } else if (!value.contains(RegExp('@'))) {
                      return "Please enter a valid email".tr;
                    } else {
                      return null;
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
