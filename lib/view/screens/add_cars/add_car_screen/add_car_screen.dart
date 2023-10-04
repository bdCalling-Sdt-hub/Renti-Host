import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/add_cars/add_car_data/add_car_controller/add_car_controller.dart';
import 'package:renti_host/view/screens/add_cars/add_car_screen/inner_widgets/add_car_body_section.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';

class AddCarsScreen extends StatefulWidget {
  const AddCarsScreen({super.key});

  @override
  State<AddCarsScreen> createState() => _AddCarsScreenState();
}

class _AddCarsScreenState extends State<AddCarsScreen> {
  String dropdownValue = 'Year';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        // App Bar
        appBar: const CustomAppBar(
          appBarContent: CustomBack(
            text: AppStaticStrings.addCar,
            color: AppColors.blackNormal,
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*DottedBorder(
                padding: const EdgeInsets.all(0),
                borderType: BorderType.RRect,
                radius: const Radius.circular(8),
                color: AppColors.blueLightActive,
                strokeWidth: 1,
                dashPattern: const [10, 10],
                child: Container(
                  padding: const EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.blueLight,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.image,
                          size: 50, color: AppColors.blueNormal),
                      const SizedBox(height: 16),
                      CustomElevatedButton(
                          onPressed: () {},
                          titleText: AppStaticStrings.uploadCarPhoto,
                          buttonWidth: double.maxFinite,
                          buttonHeight: 48),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              CustomElevatedButton(
                onPressed: () {},
                titleText: AppStaticStrings.capturePhoto,
                buttonColor: AppColors.whiteLight,
                titleColor: AppColors.blueNormal,
                buttonWidth: double.maxFinite,
                buttonHeight: 48,
                buttonBorderColor: AppColors.blueNormal,
              ),*/

              /*CarImageSection(),*/

              const AddCarBodySection(),
              const SizedBox(height: 16),
              CustomElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoute.addCarsDocument);
                },
                buttonHeight: 52,
                buttonWidth: double.infinity,
                titleText: AppStaticStrings.continuee,
              ),
            ],
          ),
        )
      ),
    );
  }
}
