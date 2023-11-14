import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:renti_host/core/global/api_url_container.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/auth/signup/sign_up_repo/sign_up_repo.dart';

class SignUpController extends GetxController {
  SignUpRepo signUpRepo;

  SignUpController({required this.signUpRepo});

  bool isSubmit = false;

  TextEditingController fullNameController = TextEditingController(text: "Md.Nahiduzzaman");
  TextEditingController emailController = TextEditingController(text: "hardikislam11@gmail.com");
  TextEditingController dateController = TextEditingController(text: "11");
  TextEditingController monthController = TextEditingController(text: "06");
  TextEditingController yearController = TextEditingController(text: "1998");
  TextEditingController passwordController = TextEditingController(text: "11223344");
  TextEditingController confirmPasswordController = TextEditingController(text: "11223344");
  TextEditingController phoneNumberController = TextEditingController(text: "1245789542");


  TextEditingController countryController = TextEditingController(text: "MX");
  TextEditingController cityController = TextEditingController(text: "Cuautitlán Izcalli");
  TextEditingController stateController = TextEditingController(text: "Aguascalientes");
  TextEditingController laneController = TextEditingController(text: "123 Main Street");
  TextEditingController postalController = TextEditingController(text: "22056");


  TextEditingController accountController = TextEditingController(text: "000000001234567897");
  TextEditingController accountHolderController = TextEditingController(text: "Nahid");



  TextEditingController creditCardNumberController = TextEditingController();
  TextEditingController expireDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController ineNumberController = TextEditingController(text: "DAXR870101VY7");
  TextEditingController rfcController = TextEditingController(text: "123456789");

  List<String> genderList = ["Male", "Female", "Others"];
  List<String> accountType = ["individual", "company"];
  int selectedGender = 0;
  int selectedAccount = 0;
  List<File> kycDocFiles = [];
  File? profileImage;
  String phoneCode = "+52";

  bool isloading = false;

  void changeGender(int index) {
    selectedGender = index;
    update();
  }
  void changeAccountType(int index) {
    selectedAccount = index;
    update();
  }

  File? uploadINEOrPassport;
  File? uploadTaxStampsKey;
  File? uploadCerStampsKey;
  String ineOrPassportFileName = "";
  String taxStampKeyFileName = "";
  String cerStampKeyFileName = "";

  Future<void> pickIneOrPassportFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ["pdf"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      PlatformFile file = result.files.first;
      if(file.extension == 'pdf'){
        uploadINEOrPassport = File(result.files.single.path.toString());
        ineOrPassportFileName = result.files.single.name;
        kycDocFiles.add(uploadINEOrPassport!);
        update();
      }else{
        Utils.snackBar("Error".tr, "Only PDF file allow".tr);
      }
    }
  }

  Future<void> pickTaxStampsFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ["pdf"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      PlatformFile file = result.files.first;
      if(file.extension == 'pdf'){
        uploadTaxStampsKey = File(result.files.single.path.toString());
        taxStampKeyFileName = result.files.single.name;
        kycDocFiles.add(uploadTaxStampsKey!);
        update();
      }else{
        Utils.snackBar("Error".tr, "Only PDF file allow".tr);
      }
    }
  }

  Future<void> pickTaxCerFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ["pdf"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      PlatformFile file = result.files.first;
      if(file.extension == 'pdf'){
        uploadCerStampsKey = File(result.files.single.path.toString());
        cerStampKeyFileName = result.files.single.name;
        kycDocFiles.add(uploadCerStampsKey!);
        update();
      }else{
        Utils.snackBar("Error".tr, "Only PDF file allow".tr);
      }
    }
  }

  void removeIneOrPassportFile() {
    if (kycDocFiles.contains(uploadINEOrPassport)) {
      kycDocFiles.remove(uploadINEOrPassport);
      uploadINEOrPassport = null;
      ineOrPassportFileName = "";
    }

    update();
  }

  void removeTaxStampsFile() {
    if (kycDocFiles.contains(uploadTaxStampsKey)) {
      kycDocFiles.remove(uploadTaxStampsKey);
      uploadTaxStampsKey = null;
      taxStampKeyFileName = "";
    }

    // kycDocFiles.removeAt(1);
    update();
  }

  void removeTaxCerStampsFile() {
    if (kycDocFiles.contains(uploadCerStampsKey)) {
      kycDocFiles.remove(uploadCerStampsKey);
      cerStampKeyFileName = "";
      uploadCerStampsKey = null;
    }
    update();
  }

  File? imageFile;
  final imagePicker = ImagePicker();
  String? imageUrl;

  void openGallery() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery
    );

    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      update();
    }
  }

  void openCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().pickImage(
        source: ImageSource.camera);

    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      update();
    }
  }

  Future<void> signUpMultipleFilesAndParams() async {
    try {
      isloading = true;
      update();
      var request = http.MultipartRequest(
        'POST',
        Uri.parse("${ApiUrlContainer.baseUrl}${ApiUrlContainer.signUpEndPoint}"),
      );

      // Add the KYC files to the request
      for (var file in kycDocFiles) {
        if (file.existsSync()) {
          try {
            var multipartFile = await http.MultipartFile.fromPath(
                "KYC", file.path,
                contentType: MediaType('application', 'pdf'));
            request.files.add(multipartFile);
            if (kDebugMode) {
              print(file.path);
            }
          } on Exception catch (e) {
            if (kDebugMode) {
              print("Error is :${e.toString()}");
            }
          }
        } else {
          if (kDebugMode) {
            print('File does not exist: ${file.path}');
          }
          // Handle the missing file gracefully, e.g., skip it or show an error message.
        }
      }

      // Add the image file to the request
      if (imageFile != null && imageFile!.existsSync()) {
        try {
          var img = await http.MultipartFile.fromPath('image', imageFile!.path,
              contentType: MediaType('image', 'jpeg'));

          request.files.add(img);
        } on Exception catch (e) {
          if (kDebugMode) {
            print('Error adding image file to request: $e');
          }
          // Handle the error gracefully, e.g., show an error message to the user.
        }
      }

     /* Map <String, String> address ={
        "city": cityController.text,
        "country": countryController.text,
        "line1": laneController.text,
        "state": stateController.text
      };
      final String addresses = jsonEncode(address);

      Map <String, String> bankInfo = {
        "account_number": accountController.text,
        "account_holder_name": accountHolderController.text,
        "account_holder_type": accountType[selectedAccount]
      };
      final String bankInformation = jsonEncode(bankInfo);*/

      // Add the parameters to the request
      Map<String, String> params = {
        "fullName": fullNameController.text,
        "email": emailController.text,
        "phoneNumber": "$phoneCode${phoneNumberController.text}",
        "gender": genderList[selectedGender],
        "address[city]": cityController.text,
        "address[state]": stateController.text,
        "address[country]": countryController.text,
        "address[line1]": laneController.text,
        "dateOfBirth": "${dateController.text}/${monthController.text}/${yearController.text}",
        "password": passwordController.text,
        "ine": ineNumberController.text,
        "RFC": rfcController.text,
        "bankInfo[account_number]" : accountController.text,
        "bankInfo[account_holder_name]" : accountHolderController.text,
        "bankInfo[account_holder_type]" : accountType[selectedAccount],
        "role": "host"
      };

      params.forEach((key, value) {
        request.fields[key] = value;
      });


      request.headers['Content-Type'] = 'multipart/form-data';

      // Send the request
      var response = await request.send();

      if (kDebugMode) {
        print(params);
        print(response.statusCode);
      }

      if (response.statusCode == 201) {
        await signUpRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.userEmailKey,emailController.text.trim().toString());
        isloading = false;
        update();
        Get.toNamed(AppRoute.kycNumberVerification);
        Utils.snackBar("Successful".tr, "Sign Up Successful".tr);
      }
      else if(response.statusCode == 409){
        isloading = false;
        update();
        Utils.snackBar("Alert!".tr, "User Already Exist".tr);
      }
      if (kDebugMode) {
        print(response.statusCode);
      }
    } catch (e) {
      isloading = false;
      update();
      if (kDebugMode) {
        print('Error sending request: $e');
      }
      //Utils.snackBar("Error".tr, "$e");
    }

    isloading = false;
    update();
  }
}