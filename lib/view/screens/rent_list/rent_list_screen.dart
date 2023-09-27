import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/rent_list/inner_widgets/rent_details_top_section.dart';
import 'package:renti_host/view/screens/rent_list/inner_widgets/renti_details_alert.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_controller/rent_list_by_id_controller.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_controller/rent_list_controller.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_repo/rent_list_by_id_repo.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_repo/rent_list_repo.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';

class RentListScreen extends StatefulWidget {
  const RentListScreen({super.key});

  @override
  State<RentListScreen> createState() => _RentListScreenState();
}

List<Map<String, String>> dataList = [
  {
    "carName": "Toyota Harrier",
    "image": AppImages.blueCar,
    "car license": "NBG1234567",
    "car year": "2020",
    "status": "Active",
  },
  {
    "carName": "Toyota Harrier",
    "image": AppImages.blueCar,
    "car license": "NBG1234567",
    "car year": "2020",
    "status": "Active",
  },
  {
    "carName": "Toyota Harrier",
    "image": AppImages.blueCar,
    "car license": "NBG1234567",
    "car year": "2020",
    "status": "Reserved",
  },
  {
    "carName": "Toyota Harrier",
    "image": AppImages.blueCar,
    "car license": "NBG1234567",
    "car year": "2020",
    "status": "Active",
  },
  {
    "carName": "Toyota Harrier",
    "image": AppImages.blueCar,
    "car license": "NBG1234567",
    "car year": "2020",
    "status": "Reserved",
  },
];

class _RentListScreenState extends State<RentListScreen> {
  @override
  void initState() {
    Get.put(ApiService(sharedPreferences: Get.find()));
    Get.put(RentListRepo(apiService: Get.find()));
    Get.put(RentListByIDRepo(apiService: Get.find()));
    var controller = Get.put(RentListController(rentListRepo: Get.find()));
    var controller1 = Get.put(RentListByIDController(rentListByIDRepo: Get.find()));
    controller.rentList();
    controller1.rentListByID();
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
            appBar: const CustomAppBar(
              appBarContent: CustomBack(
                  text: AppStaticStrings.rentList,
                  color: AppColors.blackNormal),
            ),
            body: LayoutBuilder(
              builder: (context, constraint) {
                return SingleChildScrollView(
                  padding: const EdgeInsetsDirectional.symmetric(
                      vertical: 24, horizontal: 20),
                  child: Column(
                    children: List.generate(
                      dataList.length,
                      (index) => GestureDetector(
                        onTap: () => showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              const RentDetailsAlert(),
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
                            image: dataList[index]["image"].toString(),
                            carName: dataList[index]["carName"].toString(),
                            carModel: dataList[index]["car year"].toString(),
                            status: dataList[index]["status"].toString(),
                            carLicense:
                                dataList[index]["car license"].toString(),
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
