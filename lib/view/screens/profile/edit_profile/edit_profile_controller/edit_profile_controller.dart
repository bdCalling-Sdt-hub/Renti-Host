import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/profile/edit_profile/edit_profile_repo/edit_profile_repo.dart';

class EditProfileController extends GetxController {
  EditProfileRepo editProfileRepo;
  EditProfileController({required this.editProfileRepo});
  TextEditingController emailController = TextEditingController();

  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController creaditCardNumberController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  Future<void> editProfile() async {
    ApiResponseModel responseModel = await editProfileRepo.editProfile(
        email: emailController.text,
        fullName: fullNameController.text,
        phoneNumber: phoneNumberController.text,
        image: "",
        address: addressController.text,
        dateOfBirth: dateOfBirthController.text,
        creaditCardNumber: creaditCardNumberController.text,
        gender: genderController.text);

    if (responseModel.statusCode == 200) {
      Utils.toastMessage(responseModel.message);
      update();
    } else {
      Utils.toastMessage(responseModel.message);
    }
  }
}
