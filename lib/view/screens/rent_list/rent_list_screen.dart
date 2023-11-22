import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/view/screens/rent_list/inner_widgets/rent_details_top_section.dart';
import 'package:renti_host/view/screens/rent_list/inner_widgets/renti_details_alert.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_controller/rent_list_controller.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_repo/rent_list_repo.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class RentListScreen extends StatefulWidget {
  const RentListScreen({super.key});

  @override
  State<RentListScreen> createState() => _RentListScreenState();
}

class _RentListScreenState extends State<RentListScreen> {
  @override
  void initState() {
    Get.put(ApiService(sharedPreferences: Get.find()));
    Get.put(RentListRepo(apiService: Get.find()));
    var controller = Get.put(RentListController(rentListRepo: Get.find()));
    controller.rentList();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RentListController>(
      builder: (controller) {
        return SafeArea(
          top: true,
          child: Scaffold(
            backgroundColor: AppColors.whiteLight,
            appBar: CustomAppBar(
              appBarContent: CustomBack(
                  text: "Rent List".tr, color: AppColors.blackNormal),
            ),
            body: GetBuilder<RentListController>(
              builder: (controller) {
                //RentListModel rentListModel = controller.rentListModel;
                if (controller.isLoading == true) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return controller.rentListData.isEmpty
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
                                text: "No Rent Data Found!".tr,
                                fontSize: 16,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis)
                          ],
                        ),
                      )
                    : SingleChildScrollView(
                        padding: const EdgeInsetsDirectional.symmetric(vertical: 24, horizontal: 20),
                        child: Column(
                          children: List.generate(
                            controller.rentListData.length,
                            (index) => GestureDetector(
                              onTap: () => showDialog(
                                context: context,
                                builder: (BuildContext context) => RentDetailsAlert(
                                  index: index,
                                  rentListModel: controller.rentListData,
                                ),
                              ),
                              child: Container(
                                padding: const EdgeInsetsDirectional.all(8),
                                margin: const EdgeInsetsDirectional.only(bottom: 8),
                                decoration: BoxDecoration(
                                  color: AppColors.whiteLight,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: AppColors.shadowColor,
                                      blurRadius: 10,
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                ),
                                child: RentDetailsTopSection(
                                  image: controller.rentListData[index].userId!.image!.isEmpty
                                      ? AppImages.profileImage
                                      : controller.rentListData[index].userId!.image
                                          .toString(),
                                  carName: controller.rentListData[index].userId!.fullName
                                      .toString(),
                                  carModel: controller.rentListData[index].carId!.year
                                      .toString(),
                                  requestStatus: controller.rentListData[index].requestStatus
                                      .toString(),
                                  carLicense: controller.rentListData[index].carId!.carLicenseNumber
                                      .toString(),
                                  payment: controller.rentListData[index].payment
                                      .toString(),
                                  tripStatus: controller.rentListData[index].carId!.tripStatus
                                      .toString(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
              },
            ),
          ),
        );
      },
    );
  }
}
