import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';

class StartEndDate extends StatelessWidget {
  const StartEndDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        border: BorderDirectional(
          top: BorderSide.none,
          bottom: BorderSide(color: AppColors.blueLight, width: 1),
          start: BorderSide(color: AppColors.blueLight, width: 1),
          end: BorderSide(color: AppColors.blueLight, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: AppStaticStrings.start,
                  style: GoogleFonts.poppins(
                    color: AppColors.blackNormal,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: "05 aug, 2023",
                  style: GoogleFonts.poppins(
                    color: AppColors.blackNormal,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: AppStaticStrings.end,
                  style: GoogleFonts.poppins(
                    color: AppColors.blackNormal,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: '06 july 2023 ',
                  style: GoogleFonts.poppins(
                    color: AppColors.blackNormal,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
