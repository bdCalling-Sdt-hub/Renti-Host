import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/%20home/inner_widgets/home_car_list.dart';
import 'package:renti_host/view/screens/%20home/inner_widgets/home_top_section.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/drawer/custom_drawer.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _PendingApprovalScreenState();
}

class _PendingApprovalScreenState extends State<HomeScreen> {
  bool isApproved = false;

  @override
  void initState() {
    Timer(const Duration(seconds: 10), () {
      if (isApproved == true) {
        Get.toNamed(AppRoute.homeScreen);
      } else {}
    });
    super.initState();
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        key: scaffoldKey,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        //This is a message for Admin Approval....
        /*floatingActionButton: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: AppColors.blueLight,
              borderRadius: BorderRadius.circular(8)),
          child: InkWell(
            onTap: () {},
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.error_outline_outlined,
                    size: 20, color: AppColors.blueNormal),
                CustomText(
                    text: AppStaticStrings.waitForAdmin,
                    color: AppColors.blueNormal,
                    left: 16)
              ],
            ),
          ),
        )*/
        drawer: const CustomDrawer(),
        appBar: CustomAppBar(
          appBarContent: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: const Icon(Icons.menu,
                    color: AppColors.blueNormal, size: 40),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                  size: 40),
            ],
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return const SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomeTopSection(),
                 /* const SizedBox(height: 80),
                  const CustomImage(
                      imageSrc: AppImages.adminApprovalImage,
                      imageType: ImageType.png),
                  const SizedBox(height: 48),

                  //Add New Car... That section comes when admin approved user as host...
                  GestureDetector(
                    onTap: () {},
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
                  ),*/

                  HomeCarList()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
