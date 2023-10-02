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

class SignUpController extends GetxController {
  SignUpRepo signUpRepo;
  SignUpController({required this.signUpRepo});

  bool isSubmit = false;

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController creditCardNumberController = TextEditingController();
  TextEditingController expireDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController ineNumberController = TextEditingController();
  TextEditingController rfcController = TextEditingController();

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
      ineOrPassportFileName = result.files.single.name;

      kycDocFiles.add(uploadINEOrPassport!);
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
          var fileBytes = await file.readAsBytes(); // Read file as bytes
          var multipartFile = http.MultipartFile.fromBytes(
            'KYC[]', // Use 'KYC[]' to indicate multiple files with the same field name
            fileBytes,
            filename: 'kyc.pdf', // Provide a filename for the uploaded PDF
            contentType: MediaType('application', 'pdf'), // Set content type
          );
          request.files.add(multipartFile);
        } else {
          print('File does not exist: ${file.path}');
          // Handle the missing file gracefully, e.g., skip it or show an error message.
        }
      }

      // Add the image file to the request
      if (imageFile != null && imageFile!.existsSync()) {
        var imageBytes = await imageFile!.readAsBytes(); // Read image as bytes
        var img = http.MultipartFile.fromBytes(
          'image',
          imageBytes,
          filename: 'image.jpg', // Provide a filename for the uploaded image
          contentType: MediaType('image', 'jpeg'), // Set content type
        );
        request.files.add(img);
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
        "ineNumber": ineNumberController.text,
        "RFC": rfcController.text,
      };

      request.fields.addAll(params);

      // Send the request
      var response = await request.send();

      if (response.statusCode == 201) {
        print('Files uploaded successfully');
      } else {
        print('File upload failed with status code: ${response.statusCode}');
        print('Response body: ${await response.stream.bytesToString()}');
      }
    } catch (e) {
      print('Error sending request: $e');
    }
  }
}
