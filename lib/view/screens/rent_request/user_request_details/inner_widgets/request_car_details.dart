import 'package:flutter/cupertino.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class RequestCarDetails extends StatelessWidget {
  const RequestCarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical:24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(text: AppStaticStrings.rentDate,fontSize: 16,color: AppColors.whiteDarkHover),
              CustomText(text: "06 aug 2023- 07 aug 2023",fontSize: 16,fontWeight: FontWeight.w500),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(text: AppStaticStrings.totalTime,fontSize: 16,color: AppColors.whiteDarkHover),
              CustomText(text: "24 hours",fontSize: 16,fontWeight: FontWeight.w500),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(text: AppStaticStrings.contact,fontSize: 16,color: AppColors.whiteDarkHover),
              CustomText(text: "+52 12837494",fontSize: 16,fontWeight: FontWeight.w500),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(text: AppStaticStrings.totalAmount,fontSize: 16,color: AppColors.whiteDarkHover),
              CustomText(text: '\$${'120'}',fontSize: 16,fontWeight: FontWeight.w500),
            ],
          ),
        ],
      ),
    );
  }
}
