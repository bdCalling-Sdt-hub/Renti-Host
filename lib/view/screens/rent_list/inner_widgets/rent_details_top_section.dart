import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class RentDetailsTopSection extends StatelessWidget {
  const RentDetailsTopSection(
      {super.key,
      required this.image,
      required this.carName,
      required this.carModel,
      required this.status,
      required this.carLicense});

  final String image;
  final String carName;
  final String carModel;
  final String status;
  final String carLicense;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            //Image Section
            Container(
              width: 70,
              height: 70,
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.fill),
              ),
            ),

            //Car Name and Details Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: carName,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    bottom: 8),
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
                        text: carLicense,
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackNormal),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                //Car Year Section
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: AppStaticStrings.carYear,
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: AppColors.whiteDarkHover),
                      ),
                      TextSpan(
                        text: carModel,
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
        Container(
          width: 70,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: status == "Reserved"
                ? AppColors.redLight
                : AppColors.greenLight,
          ),
          child: CustomText(
            text: status,
            color: status == "Reserved"
                ? AppColors.redNormal
                : AppColors.greenNormal,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
