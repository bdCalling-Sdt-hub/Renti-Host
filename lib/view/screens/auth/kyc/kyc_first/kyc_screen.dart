import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/container/custon_container.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:renti_host/view/widgets/textfield/custom_textfield.dart';

class KYCScreen extends StatefulWidget {
  const KYCScreen({super.key});

  @override
  State<KYCScreen> createState() => _KYCScreenState();
}

class _KYCScreenState extends State<KYCScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.blueNormal,
        appBar: const CustomAppBar(
          appBarContent: CustomBack(text: AppStaticStrings.kyc),
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
                  //Image Upload Section
                  Container(
                    width: constraints.maxWidth,
                    decoration: BoxDecoration(
                      color: AppColors.blueLight,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: DottedBorder(
                      strokeWidth: 1,
                      dashPattern: const [10, 10],
                      color: AppColors.blueLightActive,
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(8),
                      padding: const EdgeInsets.all(2),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        child: Column(
                          children: [
                            const CustomImage(
                              imageSrc: AppIcons.uploadIcon,
                              size: 50,
                            ),
                            const SizedBox(height: 16),
                            CustomElevatedButton(
                              onPressed: () {},
                              titleText: AppStaticStrings.upload,
                              buttonWidth: double.maxFinite,
                              buttonHeight: 48,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Upload Image Type Text..
                  const CustomText(
                    text: AppStaticStrings.uploadINE,
                    color: AppColors.whiteDarkActive,
                    top: 16,
                    textAlign: TextAlign.start,
                  ),
                  //INE/Passport Text and TextField
                  const CustomText(
                    text: AppStaticStrings.ineOrPassport,
                    top: 16,
                    bottom: 12,
                    textAlign: TextAlign.start,
                  ),
                  CustomTextField(
                    textInputAction: TextInputAction.done,
                    hintText: AppStaticStrings.enterIneOrPassword,
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.whiteNormalActive),
                  ),

                  //RFC Text and TextField
                  const CustomText(
                    text: AppStaticStrings.rfc,
                    top: 16,
                    bottom: 12,
                    textAlign: TextAlign.start,
                  ),
                  CustomTextField(
                    textInputAction: TextInputAction.done,
                    hintText: AppStaticStrings.enterRFC,
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
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
          child: CustomElevatedButton(onPressed: (){
            Get.toNamed(AppRoute.kycImageScreen);
          }, titleText: AppStaticStrings.continueNext),
        ),
      ),
    );
  }
}
