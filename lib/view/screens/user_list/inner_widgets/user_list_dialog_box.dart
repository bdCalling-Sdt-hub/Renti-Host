import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class UserListDialogBox extends StatefulWidget {
  const UserListDialogBox({super.key});

  @override
  State<UserListDialogBox> createState() => _UserListDialogBoxState();
}

class _UserListDialogBoxState extends State<UserListDialogBox> {
  List<Map<String, String>> dataList = [
    {
      "userName": AppStaticStrings.userName,
      "userPic": AppImages.profileImage,
      "ratingImage": AppImages.starImage,
      "rating": "2.5",
      "status": "Complete",
      "Contact:": "+52 3645646464",
      "Email:": "johndoe@gmail.com",
      "tripNo": "01"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        dataList.length,
        (index) => Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          decoration: ShapeDecoration(
            color: AppColors.whiteLight,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            shadows: const [
              BoxShadow(
                color: AppColors.shadowColor,
                blurRadius: 10,
                offset: Offset(0, 1),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: const CustomImage(
                              imageSrc: AppImages.profileImage,
                              imageType: ImageType.png),
                        ),
                        const SizedBox(width: 16),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                text: AppStaticStrings.userName,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                bottom: 8),
                            Row(
                              children: [
                                CustomImage(
                                  imageSrc: AppImages.starImage,
                                  size: 12,
                                ),
                                CustomText(
                                    text: AppStaticStrings.rating,
                                    fontSize: 10,
                                    left: 8)
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: dataList[index]["status"] == "Reserved"
                              ? AppColors.redLight
                              : AppColors.greenLight,
                        ),
                        child: CustomText(
                          text: dataList[index]["status"].toString(),
                          color: dataList[index]["status"] == "Reserved"
                              ? AppColors.redNormal
                              : AppColors.greenNormal,
                          fontSize: 10,
                        ),
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
                                borderRadius: BorderRadius.circular(4)),
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
                  ),
                ],
              ),
              const SizedBox(height: 24),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomText(text: AppStaticStrings.contact,fontSize: 16,color: AppColors.whiteDarkHover),
                  CustomText(text: dataList[index]["Contact:"].toString(),fontSize: 16,fontWeight:FontWeight.w500),
                ],
              ),
              const SizedBox(height: 8),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomText(text: AppStaticStrings.email,fontSize: 16,color: AppColors.whiteDarkHover),
                  CustomText(text: dataList[index]["Email:"].toString(),fontSize: 16,fontWeight:FontWeight.w500),
                ],
              ),
              const SizedBox(height: 8),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomText(text: AppStaticStrings.tripNo,fontSize: 16,color: AppColors.whiteDarkHover),
                  CustomText(text: dataList[index]["tripNo"].toString(),fontSize: 16,fontWeight:FontWeight.w500),
                ],
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
