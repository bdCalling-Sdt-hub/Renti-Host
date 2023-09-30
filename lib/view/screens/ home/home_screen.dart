import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/%20home/home_controller/home_carlist_controller.dart';
import 'package:renti_host/view/screens/%20home/home_model/home_carlist_model.dart';
import 'package:renti_host/view/screens/%20home/home_repo/home_carlist_repo.dart';
import 'package:renti_host/view/screens/%20home/inner_widgets/home_car_list.dart';
import 'package:renti_host/view/screens/%20home/inner_widgets/home_top_section.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/drawer/custom_drawer.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

import '../../../service/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _PendingApprovalScreenState();
}

class _PendingApprovalScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Get.put(ApiService(sharedPreferences: Get.find()));
    Get.put(HomeCarListRepo(apiService: Get.find()));
    var homeCarListController =
        Get.put(HomeCarListController(homeCarListRepo: Get.find()));
    homeCarListController.homeCarList();

    super.initState();
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeCarListController>(builder: (controller) {
      HomeCarListModel homeCarListModel = controller.homeCarListModel;

      if (controller.isLoading == true) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return SafeArea(
        top: true,
        child: Scaffold(
          backgroundColor: AppColors.whiteLight,
          key: scaffoldKey,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          //This is a message for Admin Approval....
          // floatingActionButton: isApproved ==false
          //     ? Container(
          //         margin:
          //             const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          //         padding:
          //             const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          //         width: MediaQuery.of(context).size.width,
          //         decoration: BoxDecoration(
          //             color: AppColors.blueLight,
          //             borderRadius: BorderRadius.circular(8)),
          //         child: InkWell(
          //           onTap: () {},
          //           child: const Row(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             children: [
          //               Icon(Icons.error_outline_outlined,
          //                   size: 20, color: AppColors.blueNormal),
          //               CustomText(
          //                   text: AppStaticStrings.waitForAdmin,
          //                   color: AppColors.blueNormal,
          //                   left: 16)
          //             ],
          //           ),
          //         ),
          //       )
          //     : const SizedBox(),
          drawer: const CustomDrawer(),
          appBar: CustomAppBar(
            appBarContent: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: const Icon(Icons.menu,
                      color: AppColors.blueNormal, size: 40),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoute.searchScreen);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: AppColors.whiteLight,
                        border: Border.all(color: AppColors.whiteNormalActive),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.search,
                              size: 20, color: AppColors.whiteNormalActive),
                          CustomText(
                              text: AppStaticStrings.searchCar,
                              color: AppColors.whiteNormalActive,
                              left: 8),
                        ],
                      ),
                    ),
                  ),
                ),
                const CustomImage(
                  imageSrc: AppImages.profileImage,
                  imageType: ImageType.png,
                  size: 40,
                ),
              ],
            ),
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomeTopSection(
                        activeCar: homeCarListModel.activeCar.toString(),
                        reservedCar: homeCarListModel.reservedCar.toString(),
                        totalCar: homeCarListModel.totalCar.toString()),

                    //Add car Section
                    if (homeCarListModel.totalCar! <= 0)
                      Column(
                        children: [
                          const SizedBox(height: 80),
                          const CustomImage(
                              imageSrc: AppImages.adminApprovalImage,
                              imageType: ImageType.png),
                          const SizedBox(height: 48),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoute.addCarsScreens);
                            },
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImage(
                                  imageSrc: AppIcons.addCar,
                                  size: 24,
                                  imageColor: AppColors.blueNormal,
                                ),
                                CustomText(
                                  text: AppStaticStrings.addNewCar,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blueNormal,
                                  left: 8,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                    //This is the car list section... If host have previous car data that will Show here otherwise the screen show to Add New Car

                    if (homeCarListModel.totalCar! < 0)
                      const SizedBox(height: 16),
                    if (homeCarListModel.totalCar! < 0)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CustomText(
                              text: AppStaticStrings.carsList,
                              fontWeight: FontWeight.w600),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoute.seeAllCarList,
                                  arguments: homeCarListModel);
                            },
                            child: const CustomText(
                              text: AppStaticStrings.seeAll,
                              color: AppColors.blueNormal,
                            ),
                          ),
                        ],
                      ),
                    if (homeCarListModel.totalCar! > 0)
                      HomeCarList(
                        homeCarListModel: homeCarListModel,
                      )
                  ],
                ),
              );
            },
          ),
        ),
      );
    });
  }
}
