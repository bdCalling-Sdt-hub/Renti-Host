import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/add_cars/add_car_screen/inner_widgets/car_image_scetion.dart';
import 'package:renti_host/view/screens/car_details/inner_widgets/document_file_section.dart';
import 'package:renti_host/view/screens/car_details/inner_widgets/popup_menu.dart';
import 'package:renti_host/view/screens/car_details/inner_widgets/reserved_details.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({super.key});

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: const CustomAppBar(
          appBarContent: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomBack(
                  text: AppStaticStrings.carDetails,
                  color: AppColors.blackNormal),
              PopUpMenu()
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CarImageSection(),
              const SizedBox(height: 16),
              //Car Name And Status Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomText(
                      text: "Toyota Harrier",
                      fontSize: 18,
                      color: AppColors.blueNormal,
                      fontWeight: FontWeight.w500),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.greenLight,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const CustomText(
                        text: AppStaticStrings.active,
                        color: AppColors.greenNormal,
                        fontSize: 10),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              //Cost Per Day
              const Row(
                children: [
                  CustomText(
                      text: "\$", fontSize: 16, fontWeight: FontWeight.w500),
                  CustomText(
                      text: "100", fontSize: 16, fontWeight: FontWeight.w500),
                  CustomText(
                      text: AppStaticStrings.perDay,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ],
              ),
              const SizedBox(height: 24),
              const ReservedDetails(),
              const SizedBox(height: 16),
              const DocumentFilesSection()
            ],
          ),
        ),
      ),
    );
  }
}
