import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/view/screens/settings/privacy_policy/pp_controller/pp_controller.dart';
import 'package:renti_host/view/screens/settings/privacy_policy/pp_repo/pp_repo.dart';
import 'package:renti_host/view/screens/settings/privacy_policy/pp_response_model/pp_response_model.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  void initState() {
    //

    //
    Get.put(ApiService(sharedPreferences: Get.find()));
    Get.put(PrivacyPolicyRepo(apiService: Get.find()));
    Get.put(PrivacyPolicyController(privacyPolicyRepo: Get.find()));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PrivacyPolicyController>(
      builder: (controller) {
        return SafeArea(
          top: true,
          child: Scaffold(
            backgroundColor: AppColors.whiteLight,
            appBar: CustomAppBar(
              appBarContent: CustomBack(
                text: "Privacy Policy".tr,
                color: AppColors.blackNormal,
              ),
            ),
            body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) =>
                  FutureBuilder<PrivacyPolicyModel>(
                future: controller.privacyPolicy(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator()); // Show a loading indicator while waiting for data
                  } else if (snapshot.hasError) {
                    return Text("Error: ${snapshot.error}"); // Show an error message if data fetch fails
                  } else if (!snapshot.hasData) {
                    return CustomText(
                        text: "No Data Found!".tr,
                        fontSize: 16,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis); // Handle case where no data is available
                  }
                  PrivacyPolicyModel ppModel = snapshot.data!;
                  return  ppModel.privacyPolicy?.content == null
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
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                    child: Html(data: "${ppModel.privacyPolicy?.content}"),
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
