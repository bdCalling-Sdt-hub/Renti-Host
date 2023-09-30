import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/view/screens/user_list/inner_widgets/user_list_dialog_box.dart';
import 'package:renti_host/view/screens/user_list/user_list_controller/user_list_controller.dart';
import 'package:renti_host/view/screens/user_list/user_list_response_model/user_list_response_model.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key, required this.userListResponseModel});

  final UserListResponseModel userListResponseModel;

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserListController>(
      builder: (controller) => Column(
        children: List.generate(
          widget.userListResponseModel.userList!.length,
          (index) {
            return GestureDetector(
              onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) =>  Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
                  child: UserListDialogBox(index: index, userListResponseModel: widget.userListResponseModel,),
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
                    ),
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
                            child: Image.network(widget.userListResponseModel.userList![index].carId!.image![0],height: 80),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  text: widget.userListResponseModel.userList![index].userId!.fullName.toString(),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  bottom: 8),
                              const Row(
                                children: [
                                  CustomImage(
                                    imageSrc: AppImages.starImage,
                                    size: 12,
                                  ),
                                  CustomText(
                                      text: "Rating",
                                      fontSize: 10,
                                      left: 8)
                                ],
                              ),
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
                            color: widget.userListResponseModel.userList![index].sentRequest == "Active"
                                ? AppColors.redLight
                                : AppColors.greenLight,
                          ),
                          child: CustomText(
                            text: widget.userListResponseModel.userList![index].sentRequest.toString(),
                            color: widget.userListResponseModel.userList![index].sentRequest == "Active"
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
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
