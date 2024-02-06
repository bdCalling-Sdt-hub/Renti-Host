
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/auth/signup/sign_up_controller/sign_up_controller.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:renti_host/view/widgets/textfield/custom_textfield.dart';

class KYCAuthSection extends StatefulWidget {
  const KYCAuthSection({super.key});

  @override
  State<KYCAuthSection> createState() => _KYCAuthSectionState();
}

class _KYCAuthSectionState extends State<KYCAuthSection> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (controller) => Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// <--------------------  Upload Passport -------------->
            CustomText(
              text: "1. Upload INE/Passport".tr,
              color: AppColors.whiteDarkActive,
              top: 16,
              bottom: 8,
              textAlign: TextAlign.start,
            ),
            controller.passportPath.isEmpty
                ? GestureDetector(
              onTap: (){
                controller.pickPassport();
              },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 115,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              width: 1, color: AppColors.whiteNormalActive),
                          borderRadius: BorderRadius.circular(8)),
                      alignment: Alignment.center,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImage(imageSrc: AppIcons.uploadIcons),

                        ],
                      ),
                    ),
                )
                : controller.checkExtension(controller.passportPath)!="file"
                    ? Container(padding: const EdgeInsetsDirectional.only(end: 12, top: 12),
                        width: MediaQuery.of(context).size.width,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: AppColors.whiteNormalActive),
                            image: DecorationImage(
                                image: FileImage(File(controller.passportPath)),
                                fit: BoxFit.fill)),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () => controller.removeFile1(),
                            child: const Icon(Icons.cancel_outlined,
                                color: AppColors.redNormal, size: 24),
                          ),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    color: AppColors.redNormal,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                    ),
                                  ),
                                  child: const CustomImage(
                                      imageSrc: AppIcons.pdfIcon),
                                ),
                                const SizedBox(width: 12),
                                Flexible(
                                  child: CustomText(
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    text: controller.passportName,
                                  ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.removeFile1();
                            },
                            child: const Icon(Icons.cancel_outlined,
                                color: AppColors.redNormal, size: 24),
                          ),
                        ],
                      ),
            const SizedBox(
              height: 12,
            ),
            //Upload Text Stamps Key Extension Text and File..
            /// <--------------------  Upload Stamps -------------->
            CustomText(
              text: "2. Tax stamps .key extension file".tr,
              color: AppColors.whiteDarkActive,
              top: 16,
              bottom: 8,
              textAlign: TextAlign.start,
            ),

            controller.stampKeyPath.isEmpty
                ? GestureDetector(
                  onTap: (){
                    controller.pickStampKey();
                  },
                  child: Container(
                    height: 115,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                            width: 1, color: AppColors.whiteNormalActive),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImage(imageSrc: AppIcons.uploadIcons),
                          // const SizedBox(height: 24),
                          // Row(
                          //   crossAxisAlignment: CrossAxisAlignment.center,
                          //   children: [
                          //    /* Expanded(
                          //         child: CustomElevatedButton(
                          //             onPressed: () =>
                          //                 controller.clickedTaxStampsFile(),
                          //             titleText: "Open Camara".tr,
                          //             buttonHeight: 42,
                          //             titleSize: 12)),*/
                          //     const SizedBox(width: 8),
                          //     Expanded(
                          //         child: CustomElevatedButton(
                          //              onPressed: () {
                          //
                          //              },
                          //             //     controller.pickTaxStampsFile(),
                          //             titleText: "Open Gallery".tr,
                          //             buttonHeight: 42,
                          //             titleSize: 12)),
                          //     const SizedBox(width: 8),
                          //     Expanded(
                          //         child: CustomElevatedButton(
                          //             onPressed: () =>
                          //                 controller.pickIneOrPassportFile2(),
                          //             titleText: "Pick File".tr,
                          //             buttonHeight: 42,
                          //             titleSize: 12)),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                )
                : controller.checkExtension(controller.stampKeyPath)!="file"
                    ? Container(
                        padding:
                            const EdgeInsetsDirectional.only(end: 12, top: 12),
                        width: MediaQuery.of(context).size.width,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: AppColors.whiteNormalActive),
                            image: DecorationImage(
                                image:
                                    FileImage(File(controller.stampKeyPath)),
                                fit: BoxFit.fill)),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () => controller.removeFile2(),
                            child: const Icon(Icons.cancel_outlined,
                                color: AppColors.redNormal, size: 24),
                          ),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    color: AppColors.redNormal,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                    ),
                                  ),
                                  child: const CustomImage(
                                      imageSrc: AppIcons.pdfIcon),
                                ),
                                const SizedBox(width: 12),
                                Flexible(
                                  child: CustomText(
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    text: controller.stampKeyName,
                                  ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => controller.removeFile2(),
                            child: const Icon(Icons.cancel_outlined,
                                color: AppColors.redNormal, size: 24),
                          ),
                        ],
                      ),

            //Upload Text Stamps Key Extension Text and File..
            /// <--------------------  Upload certificate -------------->
            CustomText(
              text: "3. Tax stamps .cer extension file".tr,
              color: AppColors.whiteDarkActive,
              top: 16,
              bottom: 8,
              textAlign: TextAlign.start,
            ),

            controller.stampCerPath.isEmpty
                ? GestureDetector(
              onTap:(){
                controller.pickStampCer();
              } ,
                  child: Container(
                    height: 115,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              width: 1, color: AppColors.whiteNormalActive),
                          borderRadius: BorderRadius.circular(8)),
                      alignment: Alignment.center,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImage(imageSrc: AppIcons.uploadIcons),
                         //  const SizedBox(height: 24),
                         //  Row(
                         //    crossAxisAlignment: CrossAxisAlignment.center,
                         //    children: [
                         // /*     Expanded(
                         //          child: CustomElevatedButton(
                         //              onPressed: () =>
                         //                  controller.clickedTaxCerFile(),
                         //              titleText: "Open Camara".tr,
                         //              buttonHeight: 42,
                         //              titleSize: 12)),*/
                         //      const SizedBox(width: 8),
                         //      Expanded(
                         //          child: CustomElevatedButton(
                         //               onPressed: (){
                         //
                         //               },
                         //              //     controller.pickTaxCerFile(),
                         //              titleText: "Open Gallery".tr,
                         //              buttonHeight: 42,
                         //              titleSize: 12)),
                         //      const SizedBox(width: 8),
                         //      Expanded(
                         //          child: CustomElevatedButton(
                         //              onPressed: () =>
                         //                  controller.pickIneOrPassportFile3(),
                         //              titleText: "Pick File".tr,
                         //              buttonHeight: 42,
                         //              titleSize: 12)),
                         //    ],
                         //  ),
                        ],
                      ),
                    ),
                )
                : controller.checkExtension(controller.stampCerPath) !="file"
                    ? Container(
                        padding:
                            const EdgeInsetsDirectional.only(end: 12, top: 12),
                        width: MediaQuery.of(context).size.width,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: AppColors.whiteNormalActive),
                            image: DecorationImage(
                                image:
                                    FileImage(File(controller.stampCerPath)),
                                fit: BoxFit.fill)),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () => controller.removeFile3(),
                            child: const Icon(Icons.cancel_outlined,
                                color: AppColors.redNormal, size: 24),
                          ),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    color: AppColors.redNormal,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                    ),
                                  ),
                                  child: const CustomImage(
                                      imageSrc: AppIcons.pdfIcon),
                                ),
                                const SizedBox(width: 12),
                                Flexible(
                                  child: CustomText(
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    text: controller.stampCerName,
                                  ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => controller.removeFile3(),
                            child: const Icon(Icons.cancel_outlined,
                                color: AppColors.redNormal, size: 24),
                          ),
                        ],
                      ),

            //INE/Passport Text and TextField

            CustomText(
              text: "INE/Passport Number".tr,
              top: 16,
              bottom: 12,
              textAlign: TextAlign.start,
            ),
            CustomTextField(
              textEditingController: controller.ineNumberController,
              textInputAction: TextInputAction.next,
              hintText: "Enter INE/Passport".tr,
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteNormalActive),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field can not be empty".tr;
                }
                return null;
              },
            ),
            //RFC Text and TextField
            CustomText(
              text: "RFC".tr,
              top: 16,
              bottom: 12,
              textAlign: TextAlign.start,
            ),
            CustomTextField(
              textEditingController: controller.rfcController,
              textInputAction: TextInputAction.done,
              hintText: "Enter RFC".tr,
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteNormalActive),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field can not be empty".tr;
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            CustomElevatedButton(
                onPressed: () {
                  setDataToLocalStore(
                    controller, controller.passportName,
                    controller.stampKeyName,
                    controller.ineNumberController.text,
                    controller.rfcController.text,
                    controller.stampCerPath,
                  );
                },
                buttonWidth: double.maxFinite,
                buttonHeight: 48,
                titleText: "Continue".tr)
          ],
        ),
      ),
    );
  }

  setDataToLocalStore(
      SignUpController controller,
      String ineOrPassportFileName,
      String taxStampKeyFileName,
      String cerStampKeyFileName,
      String ineNumber,
      String rfc) async {
       controller.checkFilePathEmpty();
    if (formKey.currentState!.validate()&&controller.checkFilePathEmpty()) {
        Get.toNamed(AppRoute.kycImageScreen);
    }
    await controller.signUpRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.ineOrPassport, ineOrPassportFileName);
    await controller.signUpRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.taxStampsKey, taxStampKeyFileName);
    await controller.signUpRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.taxStampsCer, cerStampKeyFileName);
    await controller.signUpRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.ineNumber, ineNumber);
    await controller.signUpRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.rfc, rfc);
  }
}
