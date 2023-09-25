import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/review/inner_widgets/all_review_top_section.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class AllReviewScreen extends StatelessWidget {
  const AllReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: const CustomAppBar(
          appBarContent: CustomBack(
              text: AppStaticStrings.allReviews, color: AppColors.blackNormal),
        ),
        body: LayoutBuilder(
          builder: (context, constraint) {
            return SingleChildScrollView(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 24, horizontal: 20),
              child: Column(
                children: List.generate(6,
                  (index) => Container(
                    padding: const EdgeInsetsDirectional.all(16),
                    margin: const EdgeInsetsDirectional.only(bottom: 8),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
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
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AllReviewTopSection(),
                        SizedBox(height: 16),
                        CustomText(textAlign: TextAlign.start,
                          text: 'Lorem ipsum dolor sit amet consectetur. Congue fames egestas tristique nisl sit nec eu scelerisque nam. Et senectus sed morbi quam.',
                          color: AppColors.whiteDarkActive,
                          fontSize: 12,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
