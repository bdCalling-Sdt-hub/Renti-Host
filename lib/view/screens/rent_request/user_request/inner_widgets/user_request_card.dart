import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_url_container.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/view/screens/rent_request/rent_request_repo/rent_request_repo.dart';
import 'package:renti_host/view/screens/rent_request/user_request/rent_request_controller/rent_request_controller.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class UserRequestCard extends StatefulWidget {
  const UserRequestCard(
      {super.key,
      required this.name,
      required this.startDate,
      required this.endDate,
      required this.image,
      required this.id});

  final String name;
  final String startDate;
  final String endDate;
  final String image;
  final String id;
  @override
  State<UserRequestCard> createState() => _UserRequestCardState();
}

class _UserRequestCardState extends State<UserRequestCard> {
  RentReqRepo rentReqRepo = RentReqRepo(apiService: Get.find());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RentRequestController>(
      builder: (controller) {


        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                widget.image!=null&& widget.image.isNotEmpty?Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image:NetworkImage(
                        "${ApiUrlContainer.imageUrl}${widget.image}",
                      ),
                          fit: BoxFit.fill
                      )
                  ),
                ):Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image:AssetImage(
                          AppImages.profileImage
                      ),
                      )
                  ),
                ),

                const SizedBox(width: 16),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            text: widget.name,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                        const SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: List.generate(
                                5,
                                (index) => const CustomImage(
                                  imageSrc: AppImages.starImage,
                                  size: 12,
                                ),
                              ),
                            ),
                             const CustomText(
                                text: "",
                                fontSize: 10,
                                left: 8),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.calendar_month, size: 14, color: AppColors.whiteDarkActive),
                            Flexible(
                              child: CustomText(
                                  text: "${widget.startDate} - ${widget.endDate}",
                                  maxLines: 1,overflow: TextOverflow.ellipsis,
                                  color: AppColors.whiteDarkActive,
                                  left: 8),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    onPressed: () {
                      rentReqRepo.rentRequest(
                          request: Request.rejected,
                          id: widget.id);
                          controller.rentRequest();

                          print(widget.id);
                    },
                    titleText: "Cancel".tr,
                    buttonColor: AppColors.redLight,
                    titleColor: AppColors.redNormal,
                    buttonHeight: 48,
                    titleWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: CustomElevatedButton(
                    onPressed: () {
                      rentReqRepo.rentRequest(request: Request.accepted, id: widget.id);
                      controller.rentRequest();
                    },
                    titleText: "Approve".tr,
                    buttonHeight: 48,
                    titleWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
