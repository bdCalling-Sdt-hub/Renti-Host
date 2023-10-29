import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Upload Car License Text and File..
                CustomText(
                  text: "1. Upload car license".tr,
                  color: AppColors.whiteDarkActive,
                  top: 16,
                  bottom: 8,
                  textAlign: TextAlign.start,
                ),

                controller.uploadCarLic == null
                    ? GestureDetector(
                        onTap: () => controller.pickCarLicFile(),
                        child: Container(
                          height: 115,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  width: 1, color: AppColors.whiteNormalActive),
                              borderRadius: BorderRadius.circular(8)),
                          alignment: Alignment.center,
                          child:
                              const CustomImage(imageSrc: AppIcons.uploadIcons),
                        ),
                      )
                    : Container(
                        padding: const EdgeInsetsDirectional.only(end: 12),
                        width: MediaQuery.of(context).size.width,
                        height: 52,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1, color: AppColors.whiteNormalActive),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: MediaQuery.of(context).size.height,
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
                                CustomText(
                                  text: controller.carLicenseFileName,
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () => controller.removeCarLicFile(),
                              child: const Icon(Icons.cancel_outlined,
                                  color: AppColors.redNormal, size: 24),
                            )
                          ],
                        ),
                      ),

                //Upload Car Insurance Policy Text and File..
                CustomText(
                  text: "2. Upload car insurance Policy".tr,
                  color: AppColors.whiteDarkActive,
                  top: 16,
                  bottom: 8,
                  textAlign: TextAlign.start,
                ),

                controller.uploadCarInsPolicy == null
                    ? GestureDetector(
                        onTap: () => controller.pickCarLisPolicyFile(),
                        child: Container(
                          height: 115,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  width: 1, color: AppColors.whiteNormalActive),
                              borderRadius: BorderRadius.circular(8)),
                          alignment: Alignment.center,
                          child:
                              const CustomImage(imageSrc: AppIcons.uploadIcons),
                        ),
                      )
                    : Container(
                        padding: const EdgeInsetsDirectional.only(end: 12),
                        width: MediaQuery.of(context).size.width,
                        height: 52,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1, color: AppColors.whiteNormalActive),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: MediaQuery.of(context).size.height,
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
                                CustomText(
                                  text: controller.carInsPolicyFillName,
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () => controller.removeCarInsPolicyFile(),
                              child: const Icon(Icons.cancel_outlined,
                                  color: AppColors.redNormal, size: 24),
                            ),
                          ],
                        ),
                      ),

                //Upload Circulation Card Text and File..
                CustomText(
                  text: "3. Upload circulation card".tr,
                  color: AppColors.whiteDarkActive,
                  top: 16,
                  textAlign: TextAlign.start,
                ),

                controller.uploadCirculationCard == null
                    ? GestureDetector(
                        onTap: () => controller.pickCirculationFile(),
                        child: Container(
                          height: 115,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  width: 1, color: AppColors.whiteNormalActive),
                              borderRadius: BorderRadius.circular(8)),
                          alignment: Alignment.center,
                          child:
                              const CustomImage(imageSrc: AppIcons.uploadIcons),
                        ),
                      )
                    : Container(
                        padding: const EdgeInsetsDirectional.only(end: 12),
                        width: MediaQuery.of(context).size.width,
                        height: 52,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1, color: AppColors.whiteNormalActive),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: MediaQuery.of(context).size.height,
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
                                CustomText(text: controller.circulationFillName)
                              ],
                            ),
                            GestureDetector(
                              onTap: () => controller.removeCirculationFile(),
                              child: const Icon(Icons.cancel_outlined,
                                  color: AppColors.redNormal, size: 24),
                            )
                          ],
                        ),
                      ),

                //Upload Car Invoice Text and File..
                CustomText(
                  text: "4. Upload car invoice".tr,
                  color: AppColors.whiteDarkActive,
                  top: 16,
                  bottom: 8,
                  textAlign: TextAlign.start,
                ),

                controller.uploadCarInvoice == null
                    ? GestureDetector(
                        onTap: () => controller.pickCarInvoiceFile(),
                        child: Container(
                          height: 115,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  width: 1, color: AppColors.whiteNormalActive),
                              borderRadius: BorderRadius.circular(8)),
                          alignment: Alignment.center,
                          child:
                              const CustomImage(imageSrc: AppIcons.uploadIcons),
                        ),
                      )
                    : Container(
                        padding: const EdgeInsetsDirectional.only(end: 12),
                        width: MediaQuery.of(context).size.width,
                        height: 52,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1, color: AppColors.whiteNormalActive),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: MediaQuery.of(context).size.height,
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
                                CustomText(text: controller.carInvoiceFillName)
                              ],
                            ),
                            GestureDetector(
                              onTap: () => controller.removeCarInvoiceFile(),
                              child: const Icon(Icons.cancel_outlined,
                                  color: AppColors.redNormal, size: 24),
                            )
                          ],
                        ),
                      ),

                //Upload REPUVE Text and File..
                CustomText(
                  text: "5. Upload REPUVE (nontheft report)".tr,
                  color: AppColors.whiteDarkActive,
                  top: 16,
                  bottom: 8,
                  textAlign: TextAlign.start,
                ),

                controller.uploadREPUVE == null
                    ? GestureDetector(
                        onTap: () => controller.pickREPUVEFile(),
                        child: Container(
                          height: 115,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  width: 1, color: AppColors.whiteNormalActive),
                              borderRadius: BorderRadius.circular(8)),
                          alignment: Alignment.center,
                          child:
                              const CustomImage(imageSrc: AppIcons.uploadIcons),
                        ),
                      )
                    : Container(
                        padding: const EdgeInsetsDirectional.only(end: 12),
                        width: MediaQuery.of(context).size.width,
                        height: 52,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1, color: AppColors.whiteNormalActive),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: MediaQuery.of(context).size.height,
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
                                CustomText(text: controller.carREPUVEFillName)
                              ],
                            ),
                            GestureDetector(
                              onTap: () => controller.removeREPUVEFile(),
                              child: const Icon(Icons.cancel_outlined,
                                  color: AppColors.redNormal, size: 24),
                            )
                          ],
                        ),
                      ),

                const SizedBox(height: 24),

                CustomElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRoute.addCarSpecialScreens);
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
