import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/notification/notification_controller.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class NotificationScreen extends StatelessWidget {
   NotificationScreen({super.key});


  final _notificationController = Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    _notificationController.getNotification();
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: CustomAppBar(
          appBarContent: CustomBack(
            text: "Notification".tr,
            color: AppColors.blackNormal,
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) => Obx(()=>_notificationController.loading.value?const Center(
            child: CircularProgressIndicator(),
          ):
             ListView.builder(
               itemCount: _notificationController.allNotificationList.length,
               padding: const EdgeInsets.symmetric(horizontal: 20,vertical:24),
               itemBuilder: (BuildContext context, int index) {
                 var data= _notificationController.allNotificationList[index];
               return Column(
                 children: [
                   Stack(
                     children: [
                       Container(
                         width: double.maxFinite,
                         padding: const EdgeInsets.all(16),
                         margin: const EdgeInsets.only(bottom: 8,top: 8),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(8),
                           color: AppColors.whiteLight,
                           boxShadow: const [
                             BoxShadow(
                               color: AppColors.shadowColor,
                               blurRadius: 10,
                               offset: Offset(0, 1),
                             ),
                           ],
                         ),
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Container(
                               height: 40,
                               width: 40,
                               margin: const EdgeInsets.only(right: 16),
                               decoration:  BoxDecoration(
                                 color: AppColors.whiteDarkHover,
                                 image: DecorationImage(image:NetworkImage(data.image!),fit: BoxFit.fill),
                                 shape: BoxShape.circle,
                               ),

                             ),
                              Flexible(
                                child: CustomText(
                                 text: data.message!,
                                 textAlign: TextAlign.start,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                             ),
                              ),
                           ],
                         ),
                       ),
                        Align(
                         alignment: Alignment.topRight,
                         child: CustomText(
                           text:DateFormat('EEEE, hh:mm a').format(data.updatedAt!),
                           fontSize: 12,
                           color: AppColors.whiteDarkHover,
                           right: 8,
                           top: 8,
                         ),
                       ),
                     ],
                   ),

                   /*Stack(
                    children: [
                      Container(
                        width: double.maxFinite,
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.whiteLight,
                          boxShadow: const [
                            BoxShadow(
                              color: AppColors.shadowColor,
                              blurRadius: 10,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.only(right: 16),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(AppImages.profileImage),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                    text: "UserName",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    bottom: 8),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    RatingBarIndicator(
                                      unratedColor: AppColors.whiteDark,
                                      rating: 4.5,
                                      itemBuilder: (context, index) => const Icon(
                                          Icons.star,
                                          color: AppColors.ratingColor),
                                      itemCount: 5,
                                      itemSize: 12.0,
                                      direction: Axis.horizontal,
                                    ),
                                    const CustomText(
                                        text: "",
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        left: 8),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.date_range_rounded,
                                        size: 12,
                                        color: AppColors.whiteDarkActive),
                                    CustomText(
                                        text: "06 aug 2023- 07 aug 2023",
                                        color: AppColors.whiteDarkActive,
                                        left: 8)
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Align(
                        alignment: Alignment.topRight,
                        child: CustomText(
                          text: "Fri, 12 am",
                          fontSize: 12,
                          color: AppColors.whiteDarkHover,
                          right: 8,
                          top: 8,
                        ),
                      ),
                    ],
                  ),*/
                 ],
               );
             },

            ),
          ),
        ),
      ),
    );
  }
}
