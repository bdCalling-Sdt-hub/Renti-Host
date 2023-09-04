import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/popups/common_popup.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class MessageList extends StatelessWidget {
  MessageList({super.key});

  final List<Map<String, String>> dataList = [
    {
      "image": AppImages.userImage,
      "document": AppStaticStrings.messageDemo,
      "status": AppStaticStrings.reserved,
    },
    {
      "image": AppImages.userImage1,
      "document": AppStaticStrings.messageDemo,
      "status": AppStaticStrings.complete,
    },
    {
      "image": AppImages.profileImage,
      "document": AppStaticStrings.messageDemo,
      "status": AppStaticStrings.reserved,
    },
    {
      "image": AppImages.userImage,
      "document": AppStaticStrings.messageDemo,
      "status": AppStaticStrings.reserved,
    },
    {
      "image": AppImages.userImage1,
      "document": AppStaticStrings.messageDemo,
      "status": AppStaticStrings.complete,
    },
    {
      "image": AppImages.profileImage,
      "document": AppStaticStrings.messageDemo,
      "status": AppStaticStrings.reserved,
    },
    {
      "image": AppImages.userImage,
      "document": AppStaticStrings.messageDemo,
      "status": AppStaticStrings.reserved,
    },
    {
      "image": AppImages.userImage1,
      "document": AppStaticStrings.messageDemo,
      "status": AppStaticStrings.complete,
    },
    {
      "image": AppImages.profileImage,
      "document": AppStaticStrings.messageDemo,
      "status": AppStaticStrings.reserved,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        dataList.length,
        (index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed(AppRoute.inboxScreen);
            },
            child: Slidable(
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                      onPressed: (v) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return CommonPopUp(
                                title: AppStaticStrings.deleteMessage,
                                onTapYes: () {},
                                onTapNo: () {});
                          },
                        );
                      },
                      backgroundColor: AppColors.redNormal,
                      icon: CupertinoIcons.delete),
                ],
              ),
              child: Container(
                margin: const EdgeInsets.only(bottom: 8),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(16),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: AppColors.shadowColor,
                      blurRadius: 10,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImage(imageSrc: dataList[index]["image"].toString(),size: 52,imageType: ImageType.png,),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CustomText(
                                  text: AppStaticStrings.bessieCooper,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                decoration: BoxDecoration(
                                  color: dataList[index]["status"] == "Reserved"
                                      ? AppColors.redLight
                                      : AppColors.greenLight,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: CustomText(
                                  text: dataList[index]["status"].toString(),
                                  fontSize: 10,
                                  color: dataList[index]["status"] == "Reserved"
                                      ? AppColors.redNormal
                                      : AppColors.greenNormal
                                ),
                              ),
                            ],
                          ),
                          CustomText(
                            text: dataList[index]["document"].toString(),
                            fontSize: 12,
                            color: AppColors.whiteDark,
                            textAlign: TextAlign.start,
                            top: 8,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
