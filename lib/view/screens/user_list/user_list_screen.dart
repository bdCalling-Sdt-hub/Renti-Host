import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/view/screens/user_list/inner_widgets/user_list_dialog_box.dart';
import 'package:renti_host/view/screens/user_list/user_list_controller/user_list_controller.dart';
import 'package:renti_host/view/screens/user_list/user_list_repo/user_list_repo.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  @override
  void initState() {
    Get.put(ApiService(sharedPreferences: Get.find()));
    Get.put(UserListRepo(apiService: Get.find()));
    final controller = Get.put(UserListController(userListRepo: Get.find()));
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.userListData();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: CustomAppBar(
          appBarContent:
              CustomBack(text: "User List".tr, color: AppColors.blackNormal),
        ),
        body: GetBuilder<UserListController>(
          builder: (controller) {
            if (controller.isLoading == true) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return controller.userList.isEmpty
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
                        CustomText(text: "No User Data Found!".tr, fontSize: 18),
                      ],
                    ),
                  )
                : SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                    child: Column(
                      children: List.generate(
                        controller.userList.length,
                        (index) {
                          return GestureDetector(
                            onTap: () => showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                contentPadding: const EdgeInsets.all(0),
                                backgroundColor: AppColors.whiteLight,
                                content: UserListDialogBox(
                                    index: index,
                                    userListResponseModel: controller.userList),
                              ),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.only(bottom: 8),
                              // height: 86,
                              padding: const EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 16),
                              decoration: ShapeDecoration(
                                color: AppColors.whiteLight,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: AppColors.shadowColor,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          margin: const EdgeInsets.only(right: 8),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: CachedNetworkImageProvider(
                                                "${controller.userList[index].userId?.image}",
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Flexible(
                                                    child: CustomText(
                                                        textAlign: TextAlign.start,
                                                        text: "${controller.userList[index].userId?.fullName}",
                                                        fontSize: 18,
                                                        maxLines: 1,
                                                        overflow: TextOverflow.ellipsis,
                                                        fontWeight: FontWeight.w500,
                                                        bottom: 8),
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 12,
                                                        vertical: 4),
                                                    margin:
                                                        const EdgeInsets.only(
                                                            bottom: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: controller
                                                                    .userList[
                                                                        index]
                                                                    .requestStatus ==
                                                                "Completed"
                                                            ? AppColors
                                                                .greenLight
                                                            : controller
                                                                        .userList[
                                                                            index]
                                                                        .carId
                                                                        ?.tripStatus ==
                                                                    "Start"
                                                                ? AppColors
                                                                    .redLight
                                                                : AppColors
                                                                    .lightYellow),
                                                    child: controller
                                                                .userList[index]
                                                                .requestStatus ==
                                                            "Completed"
                                                        ? CustomText(
                                                            text: controller
                                                                .userList[index]
                                                                .requestStatus
                                                                .toString(),
                                                            color: AppColors
                                                                .greenNormal,
                                                            fontSize: 10,
                                                          )
                                                        : controller
                                                                    .userList[
                                                                        index]
                                                                    .carId!
                                                                    .tripStatus ==
                                                                "Start"
                                                            ? const CustomText(
                                                                text:
                                                                    "Reserved",
                                                                color: AppColors
                                                                    .redNormal,
                                                                fontSize: 10,
                                                              )
                                                            : const CustomText(
                                                                text: "Pending",
                                                                color: AppColors
                                                                    .blackNormal,
                                                                fontSize: 10,
                                                              ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  const CustomImage(
                                                    imageSrc: AppImages.starImage,
                                                    size: 14,
                                                  ),
                                                  controller.userList[index].userId!.averageRatings != null
                                                      ? CustomText(
                                                          text: "(${controller.userList[index].userId!.averageRatings.toString()})",
                                                          fontSize: 10,
                                                          left: 4)
                                                      : const CustomText(
                                                          text: "0",
                                                          fontSize: 14,
                                                          left: 4)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  /*Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                            margin: const EdgeInsets.only(bottom: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: controller.userList[index].requestStatus == "Completed" ? AppColors.greenLight : AppColors.redLight),
                            child: controller.userList[index].requestStatus == "Completed" ?
                            CustomText(
                              text: controller.userList[index].requestStatus.toString(),
                              color: AppColors.greenNormal,
                              fontSize: 10,
                            ) :
                               // controller.userList[index].carId!.tripStatus == "Start"?
                            const CustomText(
                              text: "Reserved",
                              color: AppColors.redNormal,
                              fontSize: 10,
                            ) ,
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(right: 16),
                                decoration: BoxDecoration(
                                  color: AppColors.blueLight,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Icon(
                                  Icons.call,
                                  size: 18,
                                  color: AppColors.blueNormal,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: AppColors.blueLight,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Icon(
                                  Icons.messenger_outline,
                                  size: 18,
                                  color: AppColors.blueNormal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),*/
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
