import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class AllReviewTopSection extends StatelessWidget {
  const AllReviewTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 70,
                height: 70,
                margin: const EdgeInsets.only(right: 8),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(AppImages.profileImage),
                      fit: BoxFit.fill),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: AppStaticStrings.userName,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  RatingBarIndicator(
                    unratedColor: AppColors.whiteDark,
                    rating: 5.0,
                    itemBuilder: (context, index) =>
                        const Icon(Icons.star, color: AppColors.ratingColor),
                    itemCount: 5,
                    itemSize: 12.0,
                    direction: Axis.horizontal,
                  ),
                  //Car License section
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: AppStaticStrings.carLic,
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: AppColors.whiteDarkHover),
                        ),
                        TextSpan(
                          text: "NBG1234567",
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackNormal),
                        ),
                      ],
                    ),
                  ),
                  //Date Of review section
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: AppStaticStrings.date,
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: AppColors.whiteDarkHover),
                        ),
                        TextSpan(
                          text: "10 aug 2023",
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackNormal),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.blueCar),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle),
        ),
      ],
    );
  }
}
