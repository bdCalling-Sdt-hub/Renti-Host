import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/view/screens/rentiworks_support_condition/support/support_controller/support_controller.dart';
import 'package:renti_host/view/screens/rentiworks_support_condition/support/support_repo/support_repo.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  void initState() {
    Get.put(ApiService(sharedPreferences: Get.find()));
    Get.put(SupportRepo(apiService: Get.find()));
    var supportController = Get.put(SupportController(supportRepo: Get.find()));
    supportController.support();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: CustomAppBar(
          appBarContent: CustomBack(
            text: "Support".tr,
            color: AppColors.blackNormal,
          ),
        ),
        body: GetBuilder<SupportController>(
          builder: (controller) {
            if (controller.isloading == true) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return controller.supportModel.support?.content == null
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
                  )
                : SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                    child: Html(data: "${controller.supportModel.support?.content}"),
                  );
          },
        ),
      ),
    );
  }
}
