import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/utils/device_utils.dart';
import 'package:renti_host/view/screens/auth/signup/kyc/kyc_first/inner_widgets/kyc_auth_section.dart';
import 'package:renti_host/view/screens/auth/signup/sign_up_controller/sign_up_controller.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/container/custon_container.dart';

class KYCScreen extends StatefulWidget {
  const KYCScreen({super.key});

  @override
  State<KYCScreen> createState() => _KYCScreenState();
}

class _KYCScreenState extends State<KYCScreen> {
  @override
  void initState() {
    DeviceUtils.authUtils();
    super.initState();
  }

  @override
  void dispose() {
    DeviceUtils.authUtils();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (controller) => SafeArea(
        top: true,
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
              child: const SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 24),
                physics: BouncingScrollPhysics(),
                child: /*Column(
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
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
                )*/

                KYCAuthSection(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
