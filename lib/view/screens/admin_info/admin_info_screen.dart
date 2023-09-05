import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class AdminInfoScreen extends StatefulWidget {
  const AdminInfoScreen({super.key});

  @override
  State<AdminInfoScreen> createState() => _AdminInfoScreenState();
}

class _AdminInfoScreenState extends State<AdminInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: const CustomAppBar(
          appBarContent: CustomBack(
              text: AppStaticStrings.adminInfo, color: AppColors.blackNormal),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              const SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: AppStaticStrings.hotlineNumber,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blueNormal,
                    bottom: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.call, color: AppColors.blackNormal, size: 18),
                    CustomText(text: '+52 123123123', fontSize: 18, left: 8),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.call, color: AppColors.blackNormal, size: 18),
                    CustomText(text: '+52 123123123', fontSize: 18, left: 8),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.call, color: AppColors.blackNormal, size: 18),
                    CustomText(text: '+52 123123123', fontSize: 18, left: 8),
                  ],
                ),
                SizedBox(height: 24),
                CustomText(
                    text: AppStaticStrings.email,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blueNormal,
                    bottom: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.email_outlined,
                        color: AppColors.blackNormal, size: 18),
                    CustomText(text: '+52 123123123', fontSize: 18, left: 8),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.email_outlined,
                        color: AppColors.blackNormal, size: 18),
                    CustomText(text: '+52 123123123', fontSize: 18, left: 8),
                  ],
                ),
                SizedBox(height: 24),
                CustomText(
                    text: AppStaticStrings.officeAddress,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blueNormal,
                    bottom: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on_outlined,
                        color: AppColors.blackNormal, size: 18),
                    CustomText(
                        text: 'Street no.14, Mexico City',
                        fontSize: 18,
                        left: 8),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
