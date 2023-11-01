import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/auth/signup/sign_up_controller/sign_up_controller.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/container/custon_container.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:renti_host/view/widgets/textfield/custom_textfield.dart';

class SignUpBank extends StatefulWidget {
  const SignUpBank({super.key});

  @override
  State<SignUpBank> createState() => _SignUpBankState();
}

class _SignUpBankState extends State<SignUpBank> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            backgroundColor: AppColors.blueNormal,
            appBar: CustomAppBar(
              appBarContent: CustomBack(text: "Sign Up".tr),
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
                      const CustomText(text: "Account Number", bottom: 12),
                      CustomTextField(
                        textEditingController: controller.countryController,
                        keyboardType: TextInputType.phone,
                        hintText: "Type account number",
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.whiteNormalActive),
                      ),

                      const CustomText(text: "Account Holder Name", bottom: 12,top: 16),
                      CustomTextField(
                        textEditingController: controller.countryController,
                        keyboardType: TextInputType.phone,
                        hintText: "Type account holder name",
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.whiteNormalActive),
                      ),

                      const CustomText(text: "Account Holder Type",top: 16,bottom: 12),
                      CustomTextField(
                        textEditingController: controller.countryController,
                        keyboardType: TextInputType.phone,
                        hintText: "Type account holder type",
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.whiteNormalActive),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
              child: CustomElevatedButton(onPressed: (){}, titleText: "Continue".tr),
            ),
          ),
        );
      },
    );
  }
}
