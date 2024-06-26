import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/view/screens/profile/edit_profile/edit_profile_controller/edit_profile_controller.dart';
import 'package:renti_host/view/screens/profile/edit_profile/edit_profile_repo/edit_profile_repo.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:renti_host/view/widgets/textfield/custom_textfield.dart';
import '../../../../service/api_service.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    Get.put(ApiService(sharedPreferences: Get.find()));
    Get.put(EditProfileRepo(apiService: Get.find()));
    Get.put(EditProfileController(editProfileRepo: Get.find()));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var img = Get.arguments;
    return GetBuilder<EditProfileController>(
      builder: (controller) {
        return SafeArea(
          top: true,
          child: Scaffold(
            extendBody: true,
            backgroundColor: AppColors.whiteLight,
            appBar: CustomAppBar(
              appBarContent: CustomBack(
                  text: "Profile Edit".tr,
                  color: AppColors.blackNormal),
            ),
            body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) =>
                  SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          controller.imageFile == null
                              ? Container(
                                  height: 150,
                                  width: double.infinity - 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            img,
                                          ),
                                          fit: BoxFit.contain)),
                                )
                              : Container(
                                  height: 150,
                                  width: double.infinity - 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: FileImage(
                                              File(controller.imageFile!.path)),
                                          fit: BoxFit.contain)),
                                ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: GestureDetector(
                              onTap: () {
                                controller.openGallery();
                              },
                              child: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.blueNormal),
                                child: const CustomImage(
                                    imageSrc: AppIcons.cameraIcon, size: 24),
                              ),
                            ),
                          ),
                        ],
                      ),

                      //Name and TextField
                      CustomText(text: "Name".tr, bottom: 12, top: 16),
                      CustomTextField(
                        textEditingController: controller.fullNameController,
                        hintText: "Enter full name".tr,
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14,letterSpacing: 1,
                            fontWeight: FontWeight.w400,
                            color: AppColors.whiteNormalActive),
                      ),

                      //Email and TextField
                      CustomText(text: "Email".tr, top: 8, bottom: 12),
                      CustomTextField(
                        readOnly: true,
                        textEditingController: controller.emailController,
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
                       SizedBox(height: 4,),
                      Row(
                        children: [
                          const Icon(Icons.error_outline,size: 14,color: AppColors.redNormal),
                          CustomText(text: "Email not changeable".tr,color: AppColors.redNormal,left: 4),
                        ],
                      ),


                      //Phone Number Text and TextField
                      CustomText(
                        text: "Phone Number".tr,
                        bottom: 12,
                        top: 16
                      ),
                      SizedBox(
                        height: 56,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColors.whiteLight,
                                border: Border.all(
                                    color: AppColors.whiteDark,
                                    width: 1.0,
                                    style: BorderStyle.solid),
                              ),
                              child:  const CustomImage(imageSrc: AppImages.flagImage, size: 40),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: CustomTextField(
                                textEditingController:
                                controller.phoneNumberController,
                                keyboardType: TextInputType.phone,
                                hintText: "Enter phone number".tr,
                                hintStyle: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.whiteNormalActive),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomText(text: "Address".tr, top: 8, bottom: 12),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.whiteLight,
                          border: Border.all(
                              color: AppColors.whiteNormalActive,
                              style: BorderStyle.solid,
                              width: 1.0,
                              strokeAlign: 1),
                        ),
                        child: CustomTextField(
                          readOnly: true,
                          textEditingController: controller.addressController,
                          textInputAction: TextInputAction.done,
                          fieldBorderColor: AppColors.whiteLight,
                          hintText: "Enter your address".tr,
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.whiteNormalActive),
                        ),
                      ),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          const Icon(Icons.error_outline,size: 14,color: AppColors.redNormal),
                          CustomText(text: "Address not changeable".tr,color: AppColors.redNormal,left: 4),
                        ],
                      ),

                      const SizedBox(height: 24),

                      CustomElevatedButton(
                          onPressed: () {
                            controller.editProfile();
                          },
                          buttonWidth: double.maxFinite,
                          buttonHeight: 52,
                          titleText: "Update".tr),
                      const SizedBox(height: 24),

                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
