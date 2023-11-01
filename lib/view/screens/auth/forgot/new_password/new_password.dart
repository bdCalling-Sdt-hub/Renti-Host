import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/auth/forgot/new_password/new_password_controller/new_password_controller.dart';
import 'package:renti_host/view/screens/auth/forgot/new_password/new_password_repo/new_password_repo.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/container/custon_container.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:renti_host/view/widgets/textfield/custom_textfield.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => NewPasswordScreenState();
}

class NewPasswordScreenState extends State<NewPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    Get.put(ApiService(sharedPreferences: Get.find()));
    Get.put(ResetPasswordRepo(apiService: Get.find()));
    Get.put(ResetPasswordController(resetPasswordRepo: Get.find()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResetPasswordController>(
      builder: (controller) {
        return SafeArea(
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Scaffold(
              extendBody: true,
              backgroundColor: AppColors.blueNormal,
              appBar: CustomAppBar(
                appBarContent: CustomBack(
                  text: "Set a new password".tr,
                ),
              ),
              body: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) =>
                    CustomContainer(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            text: "Your password must have 8-10 characters.".tr,
                            fontSize: 16,
                            textAlign: TextAlign.start),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //New Password Text and TextField
                            CustomText(
                                text: "New Password".tr, top: 24, bottom: 12),
                            CustomTextField(
                              isPassword: true,
                              textEditingController:
                                  controller.passwordController,
                              textInputAction: TextInputAction.next,
                              hintText: "Enter password".tr,
                              suffixIconColor: AppColors.whiteNormalActive,
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.whiteNormalActive),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter your password".tr;
                                } else if (controller.passwordController.text !=
                                    controller.confirmPasswordController.text) {
                                  return "Password doesn't match".tr;
                                }
                                return null;
                              },
                            ),

                            //Confirm Password Text and TextField
                            CustomText(
                                text: "Confirm Password".tr,
                                top: 24,
                                bottom: 12),
                            CustomTextField(
                              isPassword: true,
                              textEditingController:
                                  controller.confirmPasswordController,
                              textInputAction: TextInputAction.done,
                              hintText: "Enter password".tr,
                              suffixIconColor: AppColors.whiteNormalActive,
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.whiteNormalActive),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter your password".tr;
                                } else if (!RegExp(
                                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                    .hasMatch(
                                        controller.passwordController.text)) {
                                  return "Please use uppercase,lowercase,spacial character and number"
                                      .tr;
                                } else if (value.length < 8) {
                                  return "Please use 8 character long password"
                                      .tr;
                                } else if (controller
                                        .passwordController.value !=
                                    controller
                                        .confirmPasswordController.value) {
                                  return "Password does not match!".tr;
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              bottomNavigationBar: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: controller.isSubmit
                    ? const CircularProgressIndicator()
                    : CustomElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            controller.forgetPassword();
                          }
                        },
                        titleText: "Reset".tr),
              ),
            ),
          ),
        );
      },
    );
  }
}
