import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/rent_request/user_request/inner_widgets/user_request_card.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class UserRequestScreen extends StatefulWidget {
  const UserRequestScreen({super.key});

  @override
  State<UserRequestScreen> createState() => _UserRequestScreenState();
}

class _UserRequestScreenState extends State<UserRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.whiteLight,
        appBar: const CustomAppBar(
          appBarContent: CustomText(text: AppStaticStrings.usersRequest,fontSize: 18,fontWeight: FontWeight.w600),
        ),
        body: LayoutBuilder(
          builder: (context, constraint) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                children: List.generate(
                  5,
                  (index) => GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoute.userRequestDetails);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsetsDirectional.only(bottom: 24),
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
                      child: const UserRequestCard(),
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
