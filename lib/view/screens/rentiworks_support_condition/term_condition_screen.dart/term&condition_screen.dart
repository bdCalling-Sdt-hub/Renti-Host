import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/view/screens/rentiworks_support_condition/term_condition_screen.dart/tc_controller/tc_controller.dart';
import 'package:renti_host/view/screens/rentiworks_support_condition/term_condition_screen.dart/tc_model/tc_model.dart';
import 'package:renti_host/view/screens/rentiworks_support_condition/term_condition_screen.dart/tc_repo/tc_repo.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class TermsConditionScreen extends StatefulWidget {
  const TermsConditionScreen({super.key});

  @override
  State<TermsConditionScreen> createState() => _TermsConditionScreenState();
}

class _TermsConditionScreenState extends State<TermsConditionScreen> {
  @override
  void initState() {
    //

    //
    Get.put(ApiService(sharedPreferences: Get.find()));
    Get.put(TermConditionRepo(apiService: Get.find()));
    Get.put(TermConditionController(termConditionRepo: Get.find()));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TermConditionController>(
      builder: (controller) {
        return SafeArea(
          top: true,
          child: Scaffold(
            backgroundColor: AppColors.whiteLight,
            appBar: CustomAppBar(
              appBarContent: CustomBack(
                text: "Terms & Conditions".tr,
                color: AppColors.blackNormal,
              ),
            ),
            body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) =>
                  FutureBuilder<TermConditionModel>(
                future: controller.privacyPolicy(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                        child: CircularProgressIndicator()); // Show a loading indicator while waiting for data
                  } else if (snapshot.hasError) {
                    return Text("Error: ${snapshot.error}"); // Show an error message if data fetch fails
                  } else if (!snapshot.hasData) {
                    return CustomText(
                        text: "No Data Found!".tr,
                        fontSize: 16,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis); // Handle case where no data is available
                  }
                  TermConditionModel tcModel = snapshot.data!;
                  return tcModel.termsCondition?.content == null
                      ? Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomImage(
                            imageSrc: AppIcons.dataNotFound,
                            size: 120,
                            imageType: ImageType.png),
                        const SizedBox(height: 8),
                        CustomText(
                            text: "No Data Found!".tr,
                            fontSize: 16,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis)
                      ],
                    ),
                  ) : SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                    physics: const BouncingScrollPhysics(),
                    child: Html(data: "${tcModel.termsCondition?.content}",
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
