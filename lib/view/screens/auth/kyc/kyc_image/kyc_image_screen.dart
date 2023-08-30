import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_bitton.dart';
import 'package:renti_host/view/widgets/container/custon_container.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class KYCImageScreen extends StatefulWidget {
  const KYCImageScreen({super.key});

  @override
  State<KYCImageScreen> createState() => _KYCImageScreenState();
}

class _KYCImageScreenState extends State<KYCImageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.blueNormal,
        appBar: const CustomAppBar(
          appBarContent: CustomBack(text: AppStaticStrings.selectPhoto),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              CustomContainer(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.blueNormal,
                          width: 2,
                          strokeAlign: 1,
                          style: BorderStyle.solid),
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: AppColors.blueLight, shape: BoxShape.circle),
                      height: 130,
                      width: 130,
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        size: 50,
                        color: AppColors.blueLightActive,
                      ),
                    ),
                  ),
                  const CustomText(
                    top: 16,
                    text: AppStaticStrings.uploadYourPhoto,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blueNormal,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
          child: CustomElevatedButton(onPressed: (){
            Get.toNamed(AppRoute.kycNumberVerification);
          }, titleText: AppStaticStrings.continueNext),
        ),
      ),
    );
  }
}
