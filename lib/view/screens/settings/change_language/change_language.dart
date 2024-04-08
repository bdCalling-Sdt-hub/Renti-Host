import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/Language/language_component.dart';
import 'package:renti_host/core/Language/language_controller.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({super.key});

  @override
  State<ChangeLanguageScreen> createState() => _ChaneLanguageScreenState();
}

class _ChaneLanguageScreenState extends State<ChangeLanguageScreen> {


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: CustomAppBar(
          appBarContent: CustomBack(
            text: "Change Language".tr,
            color: AppColors.blackNormal,
          ),
        ),
        body: GetBuilder<LocalizationController>(
          builder: (localizationController) {
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) =>
                  SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Column(
                      children: List.generate(
                        LanguageComponent.languages.length,
                        (index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                localizationController.setLanguage(Locale(
                                    LanguageComponent.languages[index].languageCode,
                                    LanguageComponent.languages[index].countryCode));
                                localizationController.setSelectIndex(index);
                              });
                              Get.back();
                              Utils.snackBar("Successful".tr,"Language Changed Successfully".tr);
                            },
                            child: Container(
                                decoration: ShapeDecoration(
                                  color: AppColors.whiteLight,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: AppColors.blueLight),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: AppColors.shadowColor,
                                      blurRadius: 10,
                                      offset: Offset(0, 1),
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                              margin: const EdgeInsets.only(bottom: 8),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 24),
                              width: Get.width,
                              child: Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    margin: const EdgeInsets.only(right: 8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: AppColors.blueLight, width: 1),
                                      color: index == localizationController.selectIndex
                                          ? AppColors.blueNormal
                                          : AppColors.whiteLight,
                                    ),
                                  ),
                                  CustomText(
                                    text: localizationController.languages[index].languageName,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 34),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
