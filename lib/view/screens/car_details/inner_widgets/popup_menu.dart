import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/%20home/home_controller/home_carlist_controller.dart';
import 'package:renti_host/view/screens/%20home/home_model/home_carlist_model.dart';
import 'package:renti_host/view/screens/car_details/delete_car_repo/delete_car_repo.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

import '../active_deactive_repo/active_deactive_repo.dart';

class PopUpMenu extends StatefulWidget {
  const PopUpMenu(
      {super.key, required this.homeCarListModel, required this.index});

  final HomeCarListModel homeCarListModel;
  final int index;

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  @override
  Widget build(BuildContext context) {
    return  widget.homeCarListModel
        .cars![widget.index].isCarActive
        .toString()=="Active"|| widget.homeCarListModel
        .cars![widget.index].isCarActive
        .toString()=="Deactive" ?  PopupMenuButton(
      color: AppColors.whiteLight,
      icon: const Icon(
        Icons.more_vert_outlined,
        color: Colors.black,
        size: 18,
      ),
      elevation: 1,
      position: PopupMenuPosition.under,
      itemBuilder: (context) => [
        PopupMenuItem(
          onTap: (){

            String id = widget.homeCarListModel
                .cars![widget.index].id
                .toString();

            String status = widget.homeCarListModel
                .cars![widget.index].isCarActive
                .toString();
            var repo = InactiveController(apiService: Get.find());

            print("========================Status =========+>${status}");

            if(status=="Active"){
              repo.inActiveResidence(id: id, type:Status.Deactive);
            }
            else{
              repo.inActiveResidence(id: id, type:Status.Active);
            }
          },
          child: Row(
            children: [
               const Icon(
                (Icons.edit_note_outlined),
                size: 20,
                color: AppColors.blackNormal,
              ),
              CustomText(text: widget.homeCarListModel
                  .cars![widget.index].isCarActive
                  .toString()=="Active" ? "Deactive".tr  : "Active".tr
                  .toString()  , left: 16),
            ],
          )
        ) ,
        PopupMenuItem(
          child: InkWell(
            onTap: () {
              showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: AppColors.whiteLight,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    title: Column(
                      children: [
                        CustomText(
                          text: "You sure want to Delete Car?".tr,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 24.0, horizontal: 0),
                          child: Divider(
                            height: 1,
                            color: AppColors.blackLightHover,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: CustomElevatedButton(
                                    onPressed: () {
                                      DeleteCarRepo(apiService: Get.find())
                                          .deleteCar(
                                              carId: widget.homeCarListModel
                                                  .cars![widget.index].id
                                                  .toString());

                                      var homeController =
                                          Get.find<HomeCarListController>();
                                      homeController.homeCarList();
                                      Get.offNamed(AppRoute.navigation);
                                    },
                                    titleText: "Yes".tr,
                                    buttonColor: AppColors.redLight,
                                    titleColor: AppColors.redNormal,
                                    buttonHeight: 42)),
                            const SizedBox(width: 8),
                            Expanded(
                              child: CustomElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  titleText: "N0".tr,
                                  buttonHeight: 42),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Row(
              children: [
                const Icon(
                  Icons.delete,
                  size: 20,
                  color: AppColors.redNormal,
                ),
                CustomText(
                    text: "Delete Car".tr,
                    left: 16,
                    color: AppColors.redNormal),
              ],
            ),
          ),
        ) ,
      ],
    )  : PopupMenuButton(
      color: AppColors.whiteLight,
      icon: const Icon(
        Icons.more_vert_outlined,
        color: Colors.black,
        size: 18,
      ),
      elevation: 1,
      position: PopupMenuPosition.under,
      itemBuilder: (context) => [
        PopupMenuItem(
          child: InkWell(
            onTap: () {
              showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: AppColors.whiteLight,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    title: Column(
                      children: [
                        CustomText(
                          text: "You sure want to Delete Car?".tr,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 24.0, horizontal: 0),
                          child: Divider(
                            height: 1,
                            color: AppColors.blackLightHover,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: CustomElevatedButton(
                                    onPressed: () {
                                      DeleteCarRepo(apiService: Get.find())
                                          .deleteCar(
                                          carId: widget.homeCarListModel
                                              .cars![widget.index].id
                                              .toString());

                                      var homeController =
                                      Get.find<HomeCarListController>();
                                      homeController.homeCarList();
                                      Get.offNamed(AppRoute.navigation);
                                    },
                                    titleText: "Yes".tr,
                                    buttonColor: AppColors.redLight,
                                    titleColor: AppColors.redNormal,
                                    buttonHeight: 42)),
                            const SizedBox(width: 8),
                            Expanded(
                              child: CustomElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  titleText: "N0".tr,
                                  buttonHeight: 42),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Row(
              children: [
                const Icon(
                  Icons.delete,
                  size: 20,
                  color: AppColors.redNormal,
                ),
                CustomText(
                    text: "Delete Car".tr,
                    left: 16,
                    color: AppColors.redNormal),
              ],
            ),
          ),
        ) ,
      ],
    );
  }
}
