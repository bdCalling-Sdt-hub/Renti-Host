import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/container/custon_container.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:renti_host/view/widgets/textfield/custom_textfield.dart';

class SignUpContinueScreen extends StatefulWidget {
  const SignUpContinueScreen({super.key});

  @override
  State<SignUpContinueScreen> createState() => _SignUpContinueScreenState();
}

class _SignUpContinueScreenState extends State<SignUpContinueScreen> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.blueNormal,
        appBar: const CustomAppBar(appBarContent: CustomBack(text: AppStaticStrings.signUp),),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              CustomContainer(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Phone Number Text
                    const CustomText(text: AppStaticStrings.phoneNumber, bottom: 12),
                    //Country Flag and Enter Phone Number TextField
                    SizedBox(
                      height: 56,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 110,
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
                                CustomImage(
                                    imageSrc: AppImages.flagImage, size: 40),
                                CustomText(
                                    text: AppStaticStrings.phone,
                                    left: 10,
                                    color: AppColors.whiteNormalActive)
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: CustomTextField(
                              keyboardType: TextInputType.phone,
                              hintText: AppStaticStrings.enterPhoneNumber,
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.whiteNormalActive),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Address Text and TextField
                    const CustomText(text: AppStaticStrings.address, top: 16, bottom: 12),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.whiteLight,border: Border.all(color: AppColors.whiteNormalActive,style: BorderStyle.solid,width: 1.0,strokeAlign: 1)
                      ),
                      child: CustomTextField(
                        textInputAction: TextInputAction.done,
                        fieldBorderColor: AppColors.whiteLight,
                        hintText: AppStaticStrings.enterAddress,
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.whiteNormalActive),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
          child: CustomElevatedButton(onPressed: (){
            Get.toNamed(AppRoute.kycScreen);
          }, titleText: AppStaticStrings.continueNext),
        ),
      ),
    );
  }
}
