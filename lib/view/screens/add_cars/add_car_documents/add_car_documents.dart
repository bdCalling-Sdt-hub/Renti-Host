import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/utils/device_utils.dart';
import 'package:renti_host/view/screens/add_cars/add_car_controller/add_car_controller.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class AddCarDocuments extends StatefulWidget {
  const AddCarDocuments({super.key});

  @override
  State<AddCarDocuments> createState() => _AddCarDocumentsState();
}

class _AddCarDocumentsState extends State<AddCarDocuments> {
  @override
  void initState() {
    DeviceUtils.authUtils();
    Get.put(AddCarController());
    super.initState();
  }

  @override
  void dispose() {
    DeviceUtils.authUtils();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        extendBody: true,
        // App Bar
        appBar: CustomAppBar(
          appBarContent: CustomBack(
            text: "Add Car Documentation".tr,
            color: AppColors.blackNormal,
          ),
        ),
        body: GetBuilder<AddCarController>(
          builder: (controller) => SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               /* CustomText(
                  text: "NOTE:  All file must be in PDF format".tr,
                  color: AppColors.ratingColor,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.start,
                ),*/
                   ///--------------------Upload Car License  File------------------>
                CustomText(
                  text: "1. Upload Car License".tr,
                  color: AppColors.whiteDarkActive,
                  top: 16,
                  bottom: 8,
                  textAlign: TextAlign.start,
                ),
                controller.uploadCarLicPath.isEmpty
                    ? GestureDetector(
                  onTap: (){
                    controller.pickCarLicFile();
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
                    : controller.checkExtension(controller.uploadCarLicPath)!="file"
                    ? Container(padding: const EdgeInsetsDirectional.only(end: 12, top: 12),
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          width: 1, color: AppColors.whiteNormalActive),
                      image: DecorationImage(
                          image: FileImage(File(controller.uploadCarLicPath)),
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
                              text: controller.carLicenseFileName,
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


                /// ===================+>Upload car insurance Policy====================>

                CustomText(
                  text: "2. Upload car insurance Policy".tr,
                  color: AppColors.whiteDarkActive,
                  top: 16,
                  bottom: 8,
                  textAlign: TextAlign.start,
                ),
                controller.uploadCarInsPolicyPath.isEmpty
                    ? GestureDetector(
                  onTap: (){
                    controller.pickCarLisPolicyFile();
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
                    : controller.checkExtension(controller.uploadCarInsPolicyPath)!="file"
                    ? Container(padding: const EdgeInsetsDirectional.only(end: 12, top: 12),
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          width: 1, color: AppColors.whiteNormalActive),
                      image: DecorationImage(
                          image: FileImage(File(controller.uploadCarInsPolicyPath)),
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
                              text: controller.carInsPolicyFillName,
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.removeFile2();
                      },
                      child: const Icon(Icons.cancel_outlined,
                          color: AppColors.redNormal, size: 24),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),


                /// ===================>Upload circulation card====================>
                CustomText(
                  text: "3. Upload circulation card".tr,
                  color: AppColors.whiteDarkActive,
                  top: 16,
                  bottom: 8,
                  textAlign: TextAlign.start,
                ),
                controller.uploadCirculationCardPath.isEmpty
                    ? GestureDetector(
                  onTap: (){
                    controller.pickCirculationFile();
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
                    : controller.checkExtension(controller.uploadCirculationCardPath)!="file"
                    ? Container(padding: const EdgeInsetsDirectional.only(end: 12, top: 12),
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          width: 1, color: AppColors.whiteNormalActive),
                      image: DecorationImage(
                          image: FileImage(File(controller.uploadCirculationCardPath)),
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
                              text: controller.circulationFillName,
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.removeFile3();
                      },
                      child: const Icon(Icons.cancel_outlined,
                          color: AppColors.redNormal, size: 24),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),



                /// ===================Upload car invoice====================>

                CustomText(
                  text: "4. Upload car invoice".tr,
                  color: AppColors.whiteDarkActive,
                  top: 16,
                  bottom: 8,
                  textAlign: TextAlign.start,
                ),
                controller.uploadCarInvoicePath.isEmpty
                    ? GestureDetector(
                  onTap: (){
                    controller.pickCarInvoiceFile();
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
                    : controller.checkExtension(controller.uploadCarInvoicePath)!="file"
                    ? Container(padding: const EdgeInsetsDirectional.only(end: 12, top: 12),
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          width: 1, color: AppColors.whiteNormalActive),
                      image: DecorationImage(
                          image: FileImage(File(controller.uploadCarInvoicePath)),
                          fit: BoxFit.fill)),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () => controller.removeFile4(),
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
                              text: controller.carInvoiceFillName,
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.removeFile4();
                      },
                      child: const Icon(Icons.cancel_outlined,
                          color: AppColors.redNormal, size: 24),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),

            ///========================== Upload REPUVE (non theft report) ======================>
                CustomText(
                  text: "5. Upload REPUVE (non theft report)".tr,
                  color: AppColors.whiteDarkActive,
                  top: 16,
                  bottom: 8,
                  textAlign: TextAlign.start,
                ),
                controller.uploadREPUVEPath.isEmpty
                    ? GestureDetector(
                  onTap: (){
                    controller.pickREPUVEFile();
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
                    : controller.checkExtension(controller.uploadREPUVEPath)!="file"
                    ? Container(padding: const EdgeInsetsDirectional.only(end: 12, top: 12),
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          width: 1, color: AppColors.whiteNormalActive),
                      image: DecorationImage(
                          image: FileImage(File(controller.uploadREPUVEPath)),
                          fit: BoxFit.fill)),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () => controller.removeFile5(),
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
                              text: controller.carREPUVEFillName,
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.removeFile5();
                      },
                      child: const Icon(Icons.cancel_outlined,
                          color: AppColors.redNormal, size: 24),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                CustomElevatedButton(
                  onPressed: () {
                    if (controller.checkFilePathEmpty()) {
                      Get.toNamed(AppRoute.addCarSpecialScreens);
                    }
                  },
                  buttonHeight: 52,
                  buttonWidth: double.infinity,
                  titleText: "Continue".tr,
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
