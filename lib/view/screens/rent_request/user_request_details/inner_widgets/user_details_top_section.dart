import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/view/screens/rent_request/user_request/rent_request_response_model/rent_request_response_model.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

import '../../../../../core/global/api_url_container.dart';

class UserDetailsTopSection extends StatefulWidget {
  const UserDetailsTopSection(
      {super.key, required this.rentRequestResponseModel, required this.index});
  final List<RentRequest> rentRequestResponseModel;
  final int index;

  @override
  State<UserDetailsTopSection> createState() => _UserDetailsTopSectionState();
}

class _UserDetailsTopSectionState extends State<UserDetailsTopSection> {
  @override
  Widget build(BuildContext context) {
    String img = "${ApiUrlContainer.imageUrl}${widget.rentRequestResponseModel[widget.index].userId?.image}";

    return Row(
      children: [
        Flexible(
          child: Row(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: ClipOval(
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: img,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "${widget.rentRequestResponseModel[widget.index].userId?.fullName}",
                    fontSize: 24,maxLines: 1,overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blueNormal,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                          text: "", fontSize: 10, left: 8),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        //const SizedBox(width: 24),
        /*Row(
          children: [
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(5),
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
            ),
            const SizedBox(width: 16),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColors.blueLight,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Icon(
                  Icons.message,
                  size: 18,
                  color: AppColors.blueNormal,
                ),
              ),
            ),
          ],
        ),*/
      ],
    );
  }
}
