import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/core/global/api_url_container.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/view/screens/auth/signup/sign_up_repo/sign_up_repo.dart';
import 'package:renti_host/view/screens/auth/signup/sign_up_response_model/sign_up_response_model.dart';
import 'package:flutter/foundation.dart';

class SignUpController extends GetxController {
  SignUpRepo signUpRepo;
  SignUpController({required this.signUpRepo});

  bool isSubmit = false;

  TextEditingController fullNameController =
      TextEditingController(text: kReleaseMode ? "" : "Md Babul Mirdha");
  TextEditingController emailController =
      TextEditingController(text: kReleaseMode ? "" : "babumirdha11@gm.com");
  TextEditingController dateController =
      TextEditingController(text: kReleaseMode ? "" : "03/10/2023");
  TextEditingController monthController =
      TextEditingController(text: kReleaseMode ? "" : "10");
  TextEditingController yearController =
      TextEditingController(text: kReleaseMode ? "" : "2023");
  TextEditingController passwordController =
      TextEditingController(text: kReleaseMode ? "" : "123456");
  TextEditingController confirmPasswordController =
      TextEditingController(text: kReleaseMode ? "" : "123456");
  TextEditingController phoneNumberController =
      TextEditingController(text: kReleaseMode ? "" : "01998078388");
  TextEditingController addressController =
      TextEditingController(text: kReleaseMode ? "" : "Dhaka");
  TextEditingController creditCardNumberController =
      TextEditingController(text: kReleaseMode ? "" : "1234567890");
  TextEditingController expireDateController =
      TextEditingController(text: kReleaseMode ? "" : "2023");
  TextEditingController cvvController =
      TextEditingController(text: kReleaseMode ? "" : "123");
  TextEditingController ineNumberController =
      TextEditingController(text: kReleaseMode ? "" : "11");
  TextEditingController rfcController =
      TextEditingController(text: kReleaseMode ? "" : "11");

  List<String> genderList = ["Male", "Female", "Others"];
  int selectedGender = 0;
  List<File> kycDocFiles = [];
  File? profileImage;
  String phoneCode = "+52";

  // void initialState(){
  //   isSubmit = true;
  //   update();

  //   signUpUser();

  //   isSubmit = false;
  //   update();
  // }

  Future<void> signUpUser() async {
    ApiResponseModel responseModel = await signUpRepo.createUser(
        fullName: fullNameController.text.toString(),
        email: emailController.text.toString(),
        phoneNumber: "$phoneCode ${phoneNumberController.text.toString()}",
        gender: genderList[selectedGender],
        address: addressController.text.toString(),
        dateOfBirth:
            "${dateController.text.toString()}/${monthController.text.toString()}/${yearController.text.toString()}",
        password: passwordController.text.toString(),
        kycImages: kycDocFiles,
        ineNumber: ineNumberController.text.toString(),
        profileImage: profileImage!,
        rfc: rfcController.text.toString());

    if (responseModel.statusCode == 200) {
      SignUpResponseModel signUpResponseModel =
          SignUpResponseModel.fromJson(jsonDecode(responseModel.responseJson));
      gotoNextStep(signUpResponseModel);
    } else {}
  }

  void changeGender(int index) {
    selectedGender = index;
    update();
  }

  void gotoNextStep(SignUpResponseModel signUpResponseModel) {
    Get.offAndToNamed(AppRoute.navigation);
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
      uploadINEOrPassport = File(result.files.single.path.toString());
      // ineOrPassportFileName = result.files.single.name;

      kycDocFiles.add(uploadINEOrPassport!);
      print(kycDocFiles);

      update();
    }
  }

  Future<void> pickTaxStampsFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ["pdf"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      uploadTaxStampsKey = File(result.files.single.path.toString());
      taxStampKeyFileName = result.files.single.name;
      kycDocFiles.add(uploadTaxStampsKey!);
      print(kycDocFiles);
      update();
    }
  }

  Future<void> pickTaxCerFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ["pdf"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      uploadCerStampsKey = File(result.files.single.path.toString());
      cerStampKeyFileName = result.files.single.name;
      kycDocFiles.add(uploadCerStampsKey!);
      print(kycDocFiles);

      update();
    }
  }

  void removeIneOrPassportFile() {
    uploadINEOrPassport = null;
    ineOrPassportFileName = "";
    kycDocFiles.removeAt(0);
    update();
  }

  void removeTaxStampsFile() {
    uploadTaxStampsKey = null;
    taxStampKeyFileName = "";
    kycDocFiles.removeAt(1);
    update();
  }

  void removeTaxCerStampsFile() {
    uploadCerStampsKey = null;
    cerStampKeyFileName = "";
    kycDocFiles.removeAt(2);
    update();
  }

  File? imageFile;
  final imagePicker = ImagePicker();
  String? imageUrl;

  void openGallery() async {
    final pickedFile = await ImagePicker()
        .pickImage(source: ImageSource.gallery, maxHeight: 120, maxWidth: 120);

    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      update();
    }
  }

  void openCamera(BuildContext context) async {
    final pickedFile = await ImagePicker()
        .pickImage(source: ImageSource.camera, maxHeight: 120, maxWidth: 120);

    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      update();
    }
  }

  Future<void> uploadMultipleFilesAndParams() async {
    try {
      var request = http.MultipartRequest(
        'POST',
        Uri.parse(
            "${ApiUrlContainer.baseUrl}${ApiUrlContainer.signUpEndPoint}"),
      );

      // Add the KYC files to the request
      for (var file in kycDocFiles) {
        if (file.existsSync()) {
          try {
            var multipartFile = await http.MultipartFile.fromPath(
                'KYC', file.path,
                contentType: MediaType('application', 'pdf'));
            request.files.add(multipartFile);
          } on Exception catch (e) {
            print("Error is :${e.toString()}");
          }
        } else {
          print('File does not exist: ${file.path}');
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
          print('Error adding image file to request: $e');
          // Handle the error gracefully, e.g., show an error message to the user.
        }
      }

      // Add the parameters to the request
      Map<String, String> params = {
        "fullName": fullNameController.text,
        "email": emailController.text,
        "phoneNumber": "$phoneCode ${phoneNumberController.text}",
        "gender": genderList[selectedGender],
        "address": addressController.text,
        "dateOfBirth":
            "${dateController.text}/${monthController.text}/${yearController.text}",
        "password": passwordController.text,
        "ine": ineNumberController.text,
        "RFC": rfcController.text,
        "role": "host"
      };

      params.forEach((key, value) {
        request.fields[key] = value;
      });

      request.headers['Content-Type'] = 'multipart/form-data';

      // Send the request
      var response = await request.send();

      if (response.statusCode == 201) {
        print('Files uploaded successfully');
      } else {
        print('File upload failed with status code: ${response.statusCode}');
        print('Response body: ${response.stream.bytesToString()}');
      }
    } catch (e, s) {
      print('Error sending request: $e');
      print('Error s: $s');
    }
  }
}
