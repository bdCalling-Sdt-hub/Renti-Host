import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/income/renti_free/inner_widget/rent_fee_card.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';


class RentFeeScreen extends StatelessWidget {
  const RentFeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: const CustomAppBar(
          appBarContent: CustomBack(
            text: AppStaticStrings.rentiFee,
            color: AppColors.blackNormal,
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraint) {
            return const SingleChildScrollView(
              padding: EdgeInsetsDirectional.symmetric(vertical: 24, horizontal: 20),
              child: RentFeeCard(),
            );
          },
        ),
      ),
    );
  }
}
