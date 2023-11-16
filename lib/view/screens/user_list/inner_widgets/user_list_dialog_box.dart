import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/view/screens/user_list/user_list_response_model/user_list_response_model.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class UserListDialogBox extends StatefulWidget {
  const UserListDialogBox(
      {super.key, required this.index, required this.userListResponseModel});

  final int index;
  final List<UserList> userListResponseModel;

  @override
  State<UserListDialogBox> createState() => _UserListDialogBoxState();
}

class _UserListDialogBoxState extends State<UserListDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
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
                  spreadRadius: 0),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                widget.userListResponseModel[widget.index].userId!.image.toString(),
                              ),fit: BoxFit.fill
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  text: "${widget.userListResponseModel[widget.index].userId?.fullName} ",
                                  maxLines: 1,overflow: TextOverflow.ellipsis,
                                  fontSize: 16,textAlign: TextAlign.start,
                                  fontWeight: FontWeight.w500,
                                  bottom: 8),
                              Row(
                                children: [
                                  const CustomImage(
                                    imageSrc: AppImages.starImage,
                                    size: 12,
                                  ),
                                  widget.userListResponseModel[widget.index].userId?.averageRatings != null ?
                                  CustomText(
                                    text: "${widget.userListResponseModel[widget.index].userId?.averageRatings}",
                                    fontSize: 10,
                                    left: 8,
                                  ) : const CustomText(text: "0", fontSize: 14,left: 4),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 24),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: widget.userListResponseModel[widget.index].requestStatus == "Completed"
                                ? AppColors.greenLight : AppColors.redLight),
                        child: widget.userListResponseModel[widget.index].requestStatus == "Completed" ?
                        CustomText(
                          text: "${widget.userListResponseModel[widget.index].requestStatus}",
                          color: AppColors.greenNormal,
                          fontSize: 10,
                        ) :
                        const CustomText(
                          text: "Reserved",
                          color: AppColors.redNormal,
                          fontSize: 10,
                        ) ,
                      ),
                      /*const SizedBox(height: 8),
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
                      ),*/
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                      text: "Contact: ".tr,
                      fontSize: 16,
                      color: AppColors.whiteDarkHover),
                  CustomText(
                      text: "${widget.userListResponseModel[widget.index].userId?.phoneNumber}",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   CustomText(
                      text: "Email".tr,
                      fontSize: 16,
                      color: AppColors.whiteDarkHover),
                  const SizedBox(width: 24),
                  Flexible(
                    child: CustomText(
                      maxLines: 1,overflow: TextOverflow.ellipsis,
                        text: "${widget.userListResponseModel[widget.index].userId?.email}",
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                      text: "Trip no: ".tr,
                      fontSize: 16,
                      color: AppColors.whiteDarkHover),
                  CustomText(
                      text: "${widget.userListResponseModel[widget.index].rentTripNumber}",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ],
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ],
    );
  }
}
