import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/view/screens/profile/edit_profile/edit_profile_controller/edit_profile_controller.dart';
import 'package:renti_host/view/screens/profile/edit_profile/edit_profile_repo/edit_profile_repo.dart';
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
    Get.put(ApiService(sharedPreferences: Get.find()));
    Get.put(ProfileRepo(apiService: Get.find()));
    var pC = Get.put(ProfileController(profileRepo: Get.find()));
    Get.put(EditProfileRepo(apiService: Get.find()));
    Get.put(EditProfileController(editProfileRepo: Get.find()));
    pC.profile();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var editProfileController = Get.find<EditProfileController>();
    return GetBuilder<ProfileController>(
      builder: (controller) {
        if (controller.isloading == true) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        ProfileModel profileModel = controller.profileModel;

        String fullName = profileModel.user!.fullName.toString();
        String email = profileModel.user!.email.toString();
        String phoneNumber = profileModel.user!.phoneNumber.toString();
        String creaditCardNumber =
            profileModel.user!.creaditCardNumber.toString();
        String dateOfBirth = profileModel.user!.dateOfBirth.toString();
        String gender = profileModel.user!.gender.toString();
        String address = profileModel.user!.address.toString();
        String img = profileModel.user!.image.toString();
        String ine = profileModel.user!.ine.toString();

        return SafeArea(
          top: true,
          child: Scaffold(
            backgroundColor: AppColors.whiteLight,
            appBar: CustomAppBar(
              appBarContent: CustomText(
                text: "Profile".tr,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) =>
                  SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.profile();
                        Get.toNamed(AppRoute.editProfileScreen, arguments: img);

                        editProfileController.fullNameController =
                            TextEditingController(text: fullName);

                        editProfileController.emailController =
                            TextEditingController(text: email);

                        editProfileController.creaditCardNumberController =
                            TextEditingController(text: creaditCardNumber);

                        editProfileController.phoneNumberController =
                            TextEditingController(text: phoneNumber);

                        editProfileController.dateOfBirthController =
                            TextEditingController(text: dateOfBirth);

                        editProfileController.genderController =
                            TextEditingController(text: gender);

                        editProfileController.addressController =
                            TextEditingController(text: address);
                      },
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
                            Flexible(
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: ClipOval(
                                      child: CachedNetworkImage(
                                        fit: BoxFit.cover,
                                        imageUrl: img,
                                        placeholder: (context, url) =>
                                            const CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: CustomText(
                                      overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        maxLines: 2,
                                        text: fullName,
                                        color: AppColors.whiteLight,
                                        left: 16,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            const CustomImage(imageSrc: AppIcons.editProfileIcon, size: 24),
                          ],
                        ),
                      ),
                    ),
                    ProfileCard(
                        title: "INE".tr,
                        description: ine,
                        icon: Icons.credit_card_outlined),
                    ProfileCard(
                        title: "Email".tr,
                        description: email,
                        icon: Icons.email_outlined),
                    ProfileCard(
                        title: "Mobile".tr,
                        description: phoneNumber,
                        icon: Icons.phone),
                    ProfileCard(
                        title: "Date of Birth".tr,
                        description: dateOfBirth,
                        icon: Icons.cake),
                    ProfileCard(
                        title: "Gender".tr,
                        description: gender,
                        icon: Icons.female_outlined),
                    ProfileCard(
                        title: "Address".tr,
                        description: address,
                        icon: Icons.location_on_outlined),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
