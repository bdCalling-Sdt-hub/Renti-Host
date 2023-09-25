import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/profile/inner_widgets/profile_card.dart';
import 'package:renti_host/view/screens/profile/profile_screen/profile_controller/profile_controller.dart';
import 'package:renti_host/view/screens/profile/profile_screen/profile_model/profile_model.dart';
import 'package:renti_host/view/screens/profile/profile_screen/profile_repo/profile_repo.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    //

    //
    Get.put(ApiService(sharedPreferences: Get.find()));
    Get.put(ProfileRepo(apiService: Get.find()));
    Get.put(ProfileController(profileRepo: Get.find()));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: const CustomAppBar(
          appBarContent: CustomText(
            text: AppStaticStrings.profile,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: GetBuilder<ProfileController>(builder: (controller) {
              return FutureBuilder<ProfileModel>(
                  future: controller.profile(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                          child:
                              CircularProgressIndicator()); // Show a loading indicator while waiting for data
                    } else if (snapshot.hasError) {
                      return Text(
                          "Error: ${snapshot.error}"); // Show an error message if data fetch fails
                    } else if (!snapshot.hasData) {
                      return const Text(
                          "No data available"); // Handle case where no data is available
                    }
                    ProfileModel profileModel = snapshot.data!;
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () => Get.toNamed(AppRoute.editProfileScreen),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.blueNormal,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: const CustomImage(
                                          imageSrc: AppImages.profileImage,
                                          imageType: ImageType.png,
                                          size: 50),
                                    ),
                                    CustomText(
                                        text: profileModel.user!.fullName
                                            .toString(),
                                        color: AppColors.whiteLight,
                                        left: 16,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)
                                  ],
                                ),
                                const CustomImage(
                                    imageSrc: AppIcons.editProfileIcon,
                                    size: 24),
                              ],
                            ),
                          ),
                        ),
                        ProfileCard(
                            title: AppStaticStrings.ine,
                            description: profileModel.user!.ine.toString(),
                            icon: Icons.credit_card_outlined),
                        ProfileCard(
                            title: AppStaticStrings.email,
                            description: profileModel.user!.email.toString(),
                            icon: Icons.email_outlined),
                        ProfileCard(
                            title: AppStaticStrings.mobile,
                            description:
                                profileModel.user!.phoneNumber.toString(),
                            icon: Icons.phone),
                        ProfileCard(
                            title: AppStaticStrings.dateOfBirth,
                            description:
                                profileModel.user!.dateOfBirth.toString(),
                            icon: Icons.cake),
                        ProfileCard(
                            title: AppStaticStrings.gender,
                            description: profileModel.user!.gender.toString(),
                            icon: Icons.female_outlined),
                        ProfileCard(
                            title: AppStaticStrings.address,
                            description: profileModel.user!.address.toString(),
                            icon: Icons.location_on_outlined),
                      ],
                    );
                  });
            }),
          ),
        ),
      ),
    );
  }
}
