import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/rentiworks_support_condition/support/support_controller/support_controller.dart';
import 'package:renti_host/view/screens/rentiworks_support_condition/support/support_repo/support_repo.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
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
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) =>
                  SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: controller.supportModel.support?.content == null
                    ? const Center(child: CustomText(text: "No Data Found",fontSize: 18))
                    : Html(data: "${controller.supportModel.support?.content}"
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
