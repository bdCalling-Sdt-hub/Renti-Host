import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/user_list/inner_widgets/user_list_dialog_box.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  List<Map<String, String>> dataList = [
    {
      "userName": AppStaticStrings.userName,
      "userPic": AppImages.profileImage,
      "ratingImage": AppImages.starImage,
      "rating": "2.5",
      "status": "Complete",
    },
    {
      "userName": AppStaticStrings.userName,
      "userPic": AppImages.profileImage,
      "ratingImage": AppImages.starImage,
      "rating": "3.5",
      "status": "Reserved",
    },

    {
      "userName": AppStaticStrings.userName,
      "userPic": AppImages.profileImage,
      "ratingImage": AppImages.starImage,
      "rating": "2.5",
      "status": "Complete",
    },

    {
      "userName": AppStaticStrings.userName,
      "userPic": AppImages.profileImage,
      "ratingImage": AppImages.starImage,
      "rating": "4.5",
      "status": "Reserved",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        dataList.length,
        (index) {
          return GestureDetector(
            onTap: () => showDialog(
              context: context,
              builder: (BuildContext context) => const Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                child: UserListDialogBox(),
              ),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(bottom: 8),
              // height: 86,
              padding: const EdgeInsetsDirectional.symmetric(
                  vertical: 16, horizontal: 16),
              decoration: ShapeDecoration(
                color: AppColors.whiteLight,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                shadows: const [
                  BoxShadow(
                    color: AppColors.shadowColor,
                    blurRadius: 10,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          margin: const EdgeInsets.only(right: 16),
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: CustomImage(
                              imageSrc: dataList[index]["userPic"].toString(),
                              imageType: ImageType.png),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                text: dataList[index]["userName"].toString(),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                bottom: 8),
                            Row(
                              children: [
                                CustomImage(
                                  imageSrc:
                                      dataList[index]["ratingImage"].toString(),
                                  size: 12,
                                ),
                                CustomText(
                                    text: "(${dataList[index][("rating")]})",
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
            ),
          );
        },
      ),
    );
  }
}
