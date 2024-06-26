import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/utils/app_colors.dart';

class StartEndDate extends StatelessWidget {
   StartEndDate({super.key, required this.startDate, required this.endDate});

  final List<String> date = ['05 aug, 2023', '06 aug, 2023'];
  final String startDate;
  final String endDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 12),
      decoration: const BoxDecoration(
        border: BorderDirectional(
          top: BorderSide.none,
          bottom: BorderSide(color: AppColors.blueLight, width: 0.5),
          start: BorderSide(color: AppColors.blueLight, width: 0.5),
          end: BorderSide(color: AppColors.blueLight, width: 0.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Start: ".tr,
                  style: GoogleFonts.poppins(
                    color: AppColors.blackNormal,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: startDate,
                  style: GoogleFonts.poppins(
                    color: AppColors.blackNormal,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "End: ".tr,
                  style: GoogleFonts.poppins(
                    color: AppColors.blackNormal,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: endDate,
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
