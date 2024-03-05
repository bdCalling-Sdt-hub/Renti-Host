import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/core/route/app_route.dart';
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
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (controller) {
        return SafeArea(
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
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
                        CustomText(text: "Account Number".tr, bottom: 12),
                        CustomTextField(
                          maxLength: 18,
                          textEditingController: controller.accountController,
                          keyboardType: TextInputType.number,
                          hintText: "Type account number".tr,
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.whiteNormalActive),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "This field can not be empty".tr;
                            }

                            else if(value.length <18){
                              return "Account number must be 18 digits".tr;
                            }
                            return null;
                          },
                        ),


                        CustomText(text: "Account Holder Name".tr, bottom: 12,top: 16),
                        CustomTextField(
                          textEditingController: controller.accountHolderController,
                          keyboardType: TextInputType.text,
                          hintText: "Type account holder name".tr,
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

                        CustomText(text: "Account Holder Type".tr,top: 16,bottom: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            controller.accountType.length,
                                (index) => GestureDetector(
                              onTap: () => controller.changeAccountType(index),
                              child: Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    padding: const EdgeInsetsDirectional.all(0.5),
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: AppColors.blackNormal.withOpacity(0.2),
                                        ),
                                        shape: BoxShape.circle),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: index == controller.selectedAccount
                                              ? AppColors.blueDark
                                              : Colors.transparent,
                                          shape: BoxShape.circle),
                                    ),
                                  ),
                                  CustomText(text: controller.accountType[index].tr, left: 8,right: 16),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              bottomNavigationBar: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
                child: CustomElevatedButton(onPressed: (){
                  if(formKey.currentState!.validate()){
                    Get.toNamed(AppRoute.kycScreen);
                  }
                }, titleText: "Continue".tr),
              ),
            ),
          ),
        );
      },
    );
  }
  setDataToLocalStore(SignUpController signUpController,
      {required String account,required String holder, required String holderType}) async {
    await signUpController.signUpRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.account, account);
    await signUpController.signUpRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.holder, holder);
    await signUpController.signUpRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.holderType, holderType);
  }
}
