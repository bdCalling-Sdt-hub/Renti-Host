import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
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
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.blueNormal,
        appBar: const CustomAppBar(
          appBarContent: CustomBack(
            text: AppStaticStrings.setNewPass,
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
                  const CustomText(text: AppStaticStrings.yourPassMust, fontSize: 16),
                  Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //New Password Text and TextField
                        const CustomText(
                            text: AppStaticStrings.newPassword,
                            top: 24,
                            bottom: 12),
                        CustomTextField(
                          isPassword: true,
                          textInputAction: TextInputAction.done,
                          hintText: AppStaticStrings.enterPassword,
                          suffixIconColor: AppColors.whiteNormalActive,
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.whiteNormalActive),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppStaticStrings.notBeEmpty;
                            } else if (value.length < 6) {
                              return AppStaticStrings.passwordShouldBe;
                            } else {
                              return null;
                            }
                          },
                        ),

                        //Confirm Password Text and TextField
                        const CustomText(
                            text: AppStaticStrings.confirmPassword,
                            top: 24,
                            bottom: 12),
                        CustomTextField(
                          isPassword: true,
                          textInputAction: TextInputAction.done,
                          hintText: AppStaticStrings.enterPassword,
                          suffixIconColor: AppColors.whiteNormalActive,
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.whiteNormalActive),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppStaticStrings.notBeEmpty;
                            } else if (value.length < 6) {
                              return AppStaticStrings.passwordShouldBe;
                            } else {
                              return null;
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: CustomElevatedButton(
              onPressed: () {
                Get.offAllNamed(AppRoute.signInScreen);
              },
              titleText: AppStaticStrings.reset),
        ),
      ),
    );
  }
}
