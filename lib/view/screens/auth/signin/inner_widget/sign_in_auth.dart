import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/auth/signin/sign_in_controller/sign_in_controller.dart';
import 'package:renti_host/view/widgets/button/custom_button_with_icon.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:renti_host/view/widgets/textfield/custom_textfield.dart';

class SignInAuth extends StatefulWidget {
  const SignInAuth({super.key});

  @override
  State<SignInAuth> createState() => _SignInAuthState();
}

class _SignInAuthState extends State<SignInAuth> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
      builder: (controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Email pass auth section
          Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Email Text and TextField.
                CustomText(text: "Email".tr, bottom: 12),
                CustomTextField(
                  textEditingController: controller.emailController,
                  focusNode: controller.emailFocusNode,
                  hintText: "Enter email".tr,
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                    color: AppColors.whiteNormalActive,
                  ),
                  onFieldSubmitted: (value) {
                    Utils.fieldFocusChange(context, controller.emailFocusNode,
                        controller.passwordFocusNode);
                  },
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

                //Password Text and TextField.
                CustomText(
                  text: "Password".tr,
                  bottom: 12,
                  top: 16,
                ),
                CustomTextField(
                  textEditingController: controller.passwordController,
                  focusNode: controller.passwordFocusNode,
                  isPassword: true,
                  textInputAction: TextInputAction.done,
                  isPrefixIcon: true,
                  hintText: "Enter password".tr,
                  keyboardType: TextInputType.visiblePassword,
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      color: AppColors.whiteNormalActive),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field can not be empty".tr;
                    } else if (value.length < 6) {
                      return "Password should be more than 6 characters".tr;
                    } else {
                      return null;
                    }
                  },
                ),

                //Forget Password Button
                GestureDetector(
                  onTap: () {
                    controller.clearData();
                    Get.toNamed(AppRoute.forgotPasswordScreen);
                  },
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: CustomText(
                      text: "Forgot Password?".tr,
                      fontSize: 16,
                      color: AppColors.blueDark,
                      bottom: 24,
                      top: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Sign In button
          CustomElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                controller.signInUser();
              }
            },
            titleText: "Sign In".tr,
            buttonWidth: double.maxFinite,
          ),

          //Or Text
          Align(
            alignment: Alignment.center,
            child: CustomText(
              text: "Or".tr,
              top: 24,
              bottom: 24,
              fontSize: 16,
            ),
          ),
          //SIgn In with Google and apple
          Row(
            children: [
              Expanded(
                child: CustomElevatedButtonWithIcon(
                  onPressed: () {},
                  titleText: "Google",
                  iconSrc: AppIcons.googleIcon,
                  imageType: ImageType.png,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: CustomElevatedButtonWithIcon(
                  onPressed: () {},
                  titleText: "Apple".tr,
                  iconSrc: AppIcons.appleIcon,
                  imageType: ImageType.png,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
