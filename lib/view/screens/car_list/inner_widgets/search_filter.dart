import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/car_list/inner_widgets/custom_popup_menu.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              cursorColor: AppColors.blackNormal,
              showCursor: true,
              style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.blackNormal),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search_outlined,size: 20,color: AppColors.whiteNormalActive),
                hintText: AppStaticStrings.searchCarBy,
                hintStyle: AppStaticStrings.hintStyle,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: AppColors.whiteNormalActive,width: 1)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: AppColors.whiteNormalActive,width: 1),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          const SizedBox(
            width: 55,
            child: CustomPopupMenu(),
          ),
        ],
      ),
    );
  }
}