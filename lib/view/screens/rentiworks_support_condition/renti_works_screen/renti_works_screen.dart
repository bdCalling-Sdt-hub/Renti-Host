import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/view/screens/rentiworks_support_condition/renti_works_screen/renti_works_controller/renti_works_controller.dart';
import 'package:renti_host/view/screens/rentiworks_support_condition/renti_works_screen/renti_works_repo/renti_works_repo.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class RentiWorkScreen extends StatefulWidget {
  const RentiWorkScreen({super.key});

  @override
  State<RentiWorkScreen> createState() => _RentiWorkScreenState();
}

class _RentiWorkScreenState extends State<RentiWorkScreen> {
  @override
  void initState() {
    Get.put(ApiService(sharedPreferences: Get.find()));
    Get.put(RentiWorksRepo(apiService: Get.find()));
    var rentiWorksController =
        Get.put(RentiWorksController(rentiWorksRepo: Get.find()));
    rentiWorksController.rentiWorks();
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
            text: "How Renti Works".tr,
            color: AppColors.blackNormal,
          ),
        ),
        body: GetBuilder<RentiWorksController>(
          builder: (controller) {
            if (controller.isloading == true) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return controller.rentiWorksModel.howRentiWork?.content == null
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
              child: Html(data: "${controller.rentiWorksModel.howRentiWork?.content}",
              ),
            );
          },
        ),
      ),
    );
  }
}
