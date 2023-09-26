import 'dart:convert';

import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/profile/profile_screen/profile_model/profile_model.dart';
import 'package:renti_host/view/screens/profile/profile_screen/profile_repo/profile_repo.dart';

class ProfileController extends GetxController {
  ProfileRepo profileRepo;
  ProfileController({required this.profileRepo});

  Future<ProfileModel> profile() async {
    ApiResponseModel responseModel = await profileRepo.privacyPolicy();
    ProfileModel profileModel; // Define the variable here

    if (responseModel.statusCode == 200) {
      profileModel = ProfileModel.fromJson(jsonDecode(responseModel.responseJson));
    } else {
      Utils.toastMessage(responseModel.message);

      // You should handle the case where there's an error. It's also recommended to return an appropriate response in this case.
      return ProfileModel(); // Return a default value or handle the error accordingly.
    }

    return profileModel; // Return the variable here
  }
}
