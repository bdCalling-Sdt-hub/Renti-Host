import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/container/custon_container.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:renti_host/view/widgets/textfield/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  int _radioGroupValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.blueNormal,
        appBar: CustomAppBar(
          appBarContent: CustomBack(
            text: "Sign Up".tr,
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              CustomContainer(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(bottom: 100),
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Full name And TextField
                    CustomText(text: "Full Name".tr, bottom: 12),
                    CustomTextField(
                      hintText: "Enter full name".tr,
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.whiteNormalActive),
                    ),

                    //Email and TextField
                    CustomText(text: "Email".tr, top: 16, bottom: 12),
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

                    //Gender Selection
                    CustomText(text: "Gender".tr, top: 16),
                    Row(
                      children: [
                        Row(
                          children: [
                            Radio(
                              fillColor: const MaterialStatePropertyAll(
                                  AppColors.blueNormal),
                              value: 1,
                              groupValue: _radioGroupValue,
                              onChanged: (value) {
                                setState(
                                  () {
                                    _radioGroupValue = value!;
                                  },
                                );
                              },
                            ),
                            CustomText(text: "Male".tr)
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              fillColor: const MaterialStatePropertyAll(
                                  AppColors.blueNormal),
                              value: 2,
                              groupValue: _radioGroupValue,
                              onChanged: (value) {
                                setState(() {
                                  _radioGroupValue = value!;
                                });
                              },
                            ),
                            CustomText(text: "Female".tr)
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              fillColor: const MaterialStatePropertyAll(AppColors.blueNormal),
                              value: 3,
                              groupValue: _radioGroupValue,
                              onChanged: (value) {
                                setState(() {
                                  _radioGroupValue = value!;
                                });
                              },
                            ),
                            CustomText(text: "Others".tr)
                          ],
                        ),
                      ],
                    ),

                    //Date Of Birth
                    CustomText(text: "Date of Birth".tr, top: 8, bottom: 12),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            hintText: "DD",
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.whiteNormalActive,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: CustomTextField(
                            hintText: "MM",
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.whiteNormalActive,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: CustomTextField(
                            hintText: "YY",
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.whiteNormalActive,
                            ),
                          ),
                        ),
                      ],
                    ),

                    //Password Text and TextField
                    CustomText(text: "Password".tr, bottom: 12, top: 16),
                    CustomTextField(
                      isPassword: true,
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

                    //Confirm Password Text and TextField
                    CustomText(
                        text: "Confirm Password".tr, bottom: 12, top: 16),
                    CustomTextField(
                      isPassword: true,
                      textInputAction: TextInputAction.done,
                      isPrefixIcon: true,
                      hintText: "Confirm Password".tr,
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
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: CustomElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoute.signUpContinueScreen);
              },
              titleText: "Continue".tr),
        ),
      ),
    );
  }
}
