// import 'dart:convert';
// import 'package:get/get.dart';
// import 'package:renti_host/core/global/api_response_model.dart';
// import 'package:renti_host/core/helper/shear_preference_helper.dart';
// import 'package:renti_host/utils/app_utils.dart';
// import 'package:renti_host/view/screens/profile/edit_profile/edit_profile_model/edit_profile_model.dart';
// import 'package:renti_host/view/screens/profile/edit_profile/edit_profile_repo/edit_profile_repo.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class EditProfileController extends GetxController {
//   EditProfileRepo editProfileRepo;
//   EditProfileController({required this.editProfileRepo});

//   Future<EditProfileModel> editProfile() async {
//      final prefs = await SharedPreferences.getInstance();

//     final id = prefs.getString(SharedPreferenceHelper.userIdKey);
//     final id = prefs.getString(SharedPreferenceHelper.userEmailKey);
//     final id = prefs.getString(SharedPreferenceHelper.userNameKey);
//     final id = prefs.getString(SharedPreferenceHelper.userPhoneNumberKey);
//     final id = prefs.getString(SharedPreferenceHelper.);


   
//     ApiResponseModel responseModel = await editProfileRepo.editProfile(
//         email: email,
//         password: password,
//         fullName: fullName,
//         phoneNumber: phoneNumber,
//         id: id,
//         image: "",
//         address: address);
//     EditProfileModel editProfileModel; // Define the variable here

//     if (responseModel.statusCode == 200) {
//       editProfileModel =
//           EditProfileModel.fromJson(jsonDecode(responseModel.responseJson));
//     } else {
//       Utils.toastMessage(responseModel.message);
//       // You should handle the case where there's an error. It's also recommended to return an appropriate response in this case.
//       return EditProfileModel(); // Return a default value or handle the error accordingly.
//     }

//     return editProfileModel; // Return the variable here
//   }
// }
