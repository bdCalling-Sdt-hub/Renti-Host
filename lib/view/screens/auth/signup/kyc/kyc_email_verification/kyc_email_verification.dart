import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/view/screens/auth/signup/sign_up_controller/sign_up_controller.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/container/custon_container.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class KYCEmailVerification extends StatefulWidget {
  const KYCEmailVerification({super.key});

  @override
  State<KYCEmailVerification> createState() => _KYCEmailVerificationState();
}

class _KYCEmailVerificationState extends State<KYCEmailVerification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.blueNormal,
        appBar: CustomAppBar(appBarContent: CustomBack(text: "Email Verification".tr)),
        body: GetBuilder<SignUpController>(
          builder: (controller) {
            if (controller.isloading == true) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return LayoutBuilder(
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
                        text: "weSentEmail".tr,
                        fontSize: 16,
                        textAlign: TextAlign.start,
                        bottom: 24
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 100,
                          width: 100,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.blueNormal,
                          ),
                          child: const CustomImage(
                            imageSrc: AppIcons.forgotPassIcon,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(text: "Did not get the email?".tr),
                          GestureDetector(
                            onTap: () {},
                            child: CustomText(
                              text: "Resend Email".tr,
                              color: AppColors.blueNormal,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
