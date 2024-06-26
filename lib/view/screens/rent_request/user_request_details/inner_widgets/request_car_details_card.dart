import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/rent_request/user_request/rent_request_response_model/rent_request_response_model.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class RequestCarDetailsCard extends StatefulWidget {
  const RequestCarDetailsCard(
      {super.key, required this.rentRequestResponseModel, required this.index});
  final List<RentRequest> rentRequestResponseModel;
  final int index;

  @override
  State<RequestCarDetailsCard> createState() => _RequestCarDetailsCardState();
}

class _RequestCarDetailsCardState extends State<RequestCarDetailsCard> {
  @override
  Widget build(BuildContext context) {
    String carImg = "${widget.rentRequestResponseModel[widget.index].carId?.image?[0]}";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: "Car details".tr,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.blackNormal),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsetsDirectional.symmetric(vertical: 16),
          padding: const EdgeInsetsDirectional.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.blueLight, width: 1),
            color: AppColors.whiteLight,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: AppColors.shadowColor,
                blurRadius: 10,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      maxLines: 1,overflow: TextOverflow.ellipsis,
                      text: "${widget.rentRequestResponseModel[widget.index].carId?.carModelName}",
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blueDark,
                      textAlign: TextAlign.start
                    ),
                    CustomText(
                      maxLines: 1,overflow: TextOverflow.ellipsis,
                      text: "${widget.rentRequestResponseModel[widget.index].carId?.carLicenseNumber}",
                      color: AppColors.whiteDarkActive,
                      top: 8,
                      bottom: 8,
                      textAlign: TextAlign.start,
                    ),
                    CustomText(
                      maxLines: 1,overflow: TextOverflow.ellipsis,
                      text:"${widget.rentRequestResponseModel[widget.index].carId?.totalRun}" ,
                      color: AppColors.whiteDarkActive,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 8),
                    CustomText(
                      maxLines: 1,overflow: TextOverflow.ellipsis,
                      text: "${widget.rentRequestResponseModel[widget.index].carId?.hourlyRate}\$/h",
                      color: AppColors.whiteDarkActive,
                    ),
                  ],
                ),
              ),
              ClipRRect(borderRadius: BorderRadius.circular(8),child: CachedNetworkImage(imageUrl: carImg,height: 100,width: 150)),
            ],
          ),
        ),
      ],
    );
  }
}
