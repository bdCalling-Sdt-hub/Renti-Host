import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/view/screens/%20home/home_controller/home_carlist_controller.dart';
import 'package:renti_host/view/screens/%20home/home_model/home_carlist_model.dart';
import 'package:renti_host/view/screens/%20home/home_repo/home_carlist_repo.dart';
import 'package:renti_host/view/screens/%20home/inner_widgets/home_car_list.dart';
import 'package:renti_host/view/screens/%20home/inner_widgets/home_top_section.dart';
import 'package:renti_host/view/screens/profile/profile_screen/profile_controller/profile_controller.dart';
import 'package:renti_host/view/screens/profile/profile_screen/profile_repo/profile_repo.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/drawer/custom_drawer.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/popups/common_popup.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/helper/shear_preference_helper.dart';
import '../../../service/api_service.dart';
import '../../../service/socket_service.dart';

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
    Get.find<ProfileController>();
    Get.put(ProfileRepo(apiService: Get.find()));
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      joinChat();
    });
    super.initState();
  }

  SocketService socketService = SocketService();
  String hostUid = "";

  joinChat()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
     hostUid = prefs.getString(SharedPreferenceHelper.userIdKey).toString();
   socketService.connectToSocket();
    socketService.joinRoom(hostUid);
    socketService.listenNotification();

    debugPrint("========> connect socket");
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool canReturn = true;


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await showDialog(context: context, builder: (context)=> CommonPopUp(
            title: "You sure want to log out?".tr,
            onTapYes: () async {
              final SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setBool(SharedPreferenceHelper.rememberMeKey, false);
              Get.offAllNamed(AppRoute.signInScreen);
            },
            onTapNo: () {
              Navigator.of(context).pop();
            }));
        return false;
      },
      child: SafeArea(
        top: true,
        child: Scaffold(
          backgroundColor: AppColors.whiteLight,
          key: scaffoldKey,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          drawer: const CustomDrawer(),
          appBar: CustomAppBar(
            appBarHeight: 90,
            bottom: 20,
            appBarContent: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    child: const Icon(Icons.menu,
                        color: AppColors.blueNormal, size: 40)),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoute.searchScreen);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: AppColors.whiteLight,
                        border: Border.all(color: AppColors.whiteNormalActive),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.search, size: 20, color: AppColors.whiteNormalActive),
                          CustomText(
                              text: "Search cars...".tr,maxLines: 1,overflow: TextOverflow.ellipsis,
                              color: AppColors.whiteNormalActive,
                              left: 8),
                        ],
                      ),
                    ),
                  ),
                ),
                IconButton(onPressed: (){
                  Get.toNamed(AppRoute.notificationScreen);
                }, icon:const Icon(Icons.notifications_none_outlined,color: AppColors.blueNormal,size: 28)),
                const SizedBox(width: 4,),
                GetBuilder<ProfileController>(
                  builder: (controller) {
                    if (controller.isloading == true) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(controller.img),
                        ),
                      ),
                      height: 50,
                      width: 40,
                    );
                  },
                ),

              ],
            ),
          ),
          body: GetBuilder<HomeCarListController>(
            builder: (controller) {
              HomeCarListModel homeCarListModel = controller.homeCarListModel;

              if (controller.isLoading == true) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
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
                                child:  Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const CustomImage(
                                      imageSrc: AppIcons.addCar,
                                      size: 24,
                                      imageColor: AppColors.blueNormal,
                                    ),
                                    CustomText(
                                      text: "Add New Car".tr,
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

                        if (homeCarListModel.totalCar! > 0)
                          const SizedBox(height: 16),
                        if (homeCarListModel.totalCar! > 0)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomText(
                                  text: "Cars List".tr,
                                  fontWeight: FontWeight.w600),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoute.seeAllCarList, arguments: homeCarListModel);
                                },
                                child: CustomText(
                                  text: "See all".tr,
                                  color: AppColors.blueNormal,
                                ),
                              ),
                            ],
                          ),
                        if (homeCarListModel.totalCar! > 0)
                          HomeCarList(homeCarListModel: homeCarListModel)
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
