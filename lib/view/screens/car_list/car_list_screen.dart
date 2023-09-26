import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/car_list/inner_widgets/search_filter.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class CarListScreen extends StatefulWidget {
  const CarListScreen({super.key});

  @override
  State<CarListScreen> createState() => _CarListScreenState();
}

class _CarListScreenState extends State<CarListScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: const CustomAppBar(
          appBarContent: CustomBack(
              text: AppStaticStrings.carList,
              color: AppColors.blackNormal),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            children: [
              const SearchFilter(),
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 24),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 8,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        mainAxisExtent: 170),
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoute.carDetailsScreen);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.whiteLight,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: const [
                            BoxShadow(
                              color: AppColors.shadowColor,
                              blurRadius: 8,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 56,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.zero,
                                  bottomRight: Radius.zero,
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                image: DecorationImage(
                                    image: AssetImage(AppImages.blueCar),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 20),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 4),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: AppColors.greenLight,
                                    borderRadius:
                                    BorderRadius.circular(4),
                                  ),
                                  child: const CustomText(
                                      text: AppStaticStrings.active,
                                      color: AppColors.greenNormal,
                                      fontSize: 10),
                                ),
                                const CustomText(
                                    text: "Toyota Harrier", fontSize: 12),
                                const CustomText(
                                    text: "2018",
                                    fontSize: 10,
                                    color: AppColors.whiteDarkActive),
                                const CustomText(
                                    text: "61-10-TMQ",
                                    fontSize: 10,
                                    top: 4,
                                    bottom: 4),
                                const CustomText(
                                    text: AppStaticStrings.seeDetails,
                                    fontSize: 10,
                                    color: AppColors.blueNormal),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
