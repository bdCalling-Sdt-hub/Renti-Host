import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:renti_host/core/global/api_url_container.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/auth/signup/sign_up_repo/sign_up_repo.dart';
import 'package:path/path.dart' as path;

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

  TextEditingController countryController = TextEditingController(text: "MX");
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController laneController = TextEditingController();
  TextEditingController postalController = TextEditingController();

  TextEditingController accountController = TextEditingController();
  TextEditingController accountHolderController = TextEditingController();

  TextEditingController creditCardNumberController = TextEditingController();
  TextEditingController expireDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController ineNumberController = TextEditingController();
  TextEditingController rfcController = TextEditingController();

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


  var isContentType1 = 0;
  var isContentType2 = 0;
  var isContentType3 = 0;


  File? uploadINEOrPassport;
  File? uploadINEOrPassport1;
  File? uploadINEOrPassport2;
  File? uploadINEOrPassport3;
  File? uploadTaxStampsKey;
  File? uploadCerStampsKey;
  String ineOrPassportFileName = "";
  String taxStampKeyFileName = "";
  String cerStampKeyFileName = "";

  String passportPath="";
  String stampPath="";
  String certificatePath="";


  removeFile1(){
    isContentType1=0;
    update();
  }

  removeFile2(){
    isContentType2 = 0;
    update();
  }

  removeFile3(){
    isContentType3 = 0;
    update();
  }

//files


  Future<void> pickIneOrPassportFile1() async {


     FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        allowedExtensions: ["pdf" , "key", "cer"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      PlatformFile file = result.files.first;
      if(file.extension == 'pdf' || file.extension == 'key' || file.extension == 'cer'){
        uploadINEOrPassport1 = File(result.files.single.path.toString());
        passportPath=result.files.single.path.toString();
        ineOrPassportFileName = result.files.single.name;
        kycDocFiles.add(uploadINEOrPassport1!);
        isContentType1=2;
        update();
      }else{
        Utils.snackBar("Error".tr, "any files allow");
      }
    }
  }
  Future<void> pickIneOrPassportFile2() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        allowedExtensions: ["pdf" , "key", "cer"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      PlatformFile file = result.files.first;
      if(file.extension == 'pdf'  || file.extension == 'key' || file.extension == 'cer'){
        uploadINEOrPassport2 = File(result.files.single.path.toString());
        ineOrPassportFileName = result.files.single.name;
        kycDocFiles.add(uploadINEOrPassport2!);
        isContentType2=2;
        update();
      }else{
        Utils.snackBar("Error".tr, "any files allow");
      }
    }
  }
  Future<void> pickIneOrPassportFile3() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        allowedExtensions: ["pdf" , "key", "cer"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      PlatformFile file = result.files.first;
      if(file.extension == 'pdf' || file.extension == 'key' || file.extension == 'cer' ){
        uploadINEOrPassport3 = File(result.files.single.path.toString());
        ineOrPassportFileName = result.files.single.name;
        kycDocFiles.add(uploadINEOrPassport3!);
        isContentType3=2;
        update();
      }else{
        Utils.snackBar("Error".tr, "any files allow");
      }
    }
  }

  // from gallery image
  Future<void> pickIneOrPassportFile() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      uploadINEOrPassport = File(pickedFile.path);
      passportPath=pickedFile.path;
      kycDocFiles.add(uploadINEOrPassport!);
      debugPrint("=======> Pick Gallery Image $passportPath");
      isContentType1=1;
      update();
    }
  }
  Future<void> pickTaxStampsFile() async {

    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      uploadTaxStampsKey = File(pickedFile.path);
      kycDocFiles.add(uploadTaxStampsKey!);
      isContentType2=1;
      update();
    }
  }
  Future<void> pickTaxCerFile() async {
    /*FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ["pdf"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      PlatformFile file = result.files.first;
      if (file.extension == 'pdf') {
        uploadCerStampsKey = File(result.files.single.path.toString());
        cerStampKeyFileName = result.files.single.name;
        kycDocFiles.add(uploadCerStampsKey!);
        update();
      } else {
        Utils.snackBar("Error".tr, "Only PDF file allow".tr);
      }
    }*/
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      uploadCerStampsKey = File(pickedFile.path);
      kycDocFiles.add(uploadCerStampsKey!);
      isContentType3=1;
      update();
    }
  }

/*  //INE get by Camara
  Future<void> clickedIneOrPassportFile() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.camera);
    if (picked != null) {
      uploadINEOrPassport = File(picked.path);
      passportPath=picked.path;
      kycDocFiles.add(uploadINEOrPassport!);
      isContentType1=1;
      update();
    }
  }
  //TaxStamps.key get by camara
  Future<void> clickedTaxStampsFile() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      uploadTaxStampsKey = File(pickedFile.path);
      kycDocFiles.add(uploadTaxStampsKey!);
      isContentType2=1;
      update();
    }
  }
  //TaxStamps.cer get by camara
  Future<void> clickedTaxCerFile() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      uploadCerStampsKey = File(pickedFile.path);
      kycDocFiles.add(uploadCerStampsKey!);
      isContentType3=1;
      update();
    }
  }*/


  // void removeIneOrPassportFile() {
  //   if (kycDocFiles.contains(uploadINEOrPassport)) {
  //     kycDocFiles.remove(uploadINEOrPassport);
  //     uploadINEOrPassport = null;
  //     ineOrPassportFileName = "";
  //     isContentType==0;
  //     update();
  //   }
  //   update();
  // }
  // void removeCarLicFile() {
  //   if (kycDocFiles.contains(uploadINEOrPassport1)) {
  //     kycDocFiles.remove(uploadINEOrPassport1);
  //     uploadINEOrPassport1 = null;
  //     ineOrPassportFileName = "";
  //     // isContentType==0;
  //     update();
  //   }
  //
  //   update();
  // }
  // void removeTaxStampsFile() {
  //   if (kycDocFiles.contains(uploadTaxStampsKey)) {
  //     kycDocFiles.remove(uploadTaxStampsKey);
  //     uploadTaxStampsKey = null;
  //     taxStampKeyFileName = "";
  //     isContentType==0;
  //   }
  //   update();
  // }
  //
  // void removeTaxCerStampsFile() {
  //   if (kycDocFiles.contains(uploadCerStampsKey)) {
  //     kycDocFiles.remove(uploadCerStampsKey);
  //     cerStampKeyFileName = "";
  //     uploadCerStampsKey = null;
  //     isContentType==0;
  //   }
  //   update();
  // }

  File? imageFile;
  final imagePicker = ImagePicker();
  String? imageUrl;

  void openGallery() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      update();
    }
  }

  void openCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      update();
    }
  }

  Future<void> signUpMultipleFilesAndParams() async {
  /*  debugPrint(fullNameController.text);
    debugPrint(emailController.text);
    debugPrint("$selectedGender");
    debugPrint(dateController.text);
    debugPrint(passwordController.text);
    debugPrint(phoneNumberController.text);
    debugPrint(countryController.text);
    debugPrint(cityController.text);
    debugPrint(stateController.text);
    debugPrint(laneController.text);
    debugPrint(postalController.text);
    debugPrint(accountController.text);
    debugPrint(accountHolderController.text);
    debugPrint("$selectedAccount");
    debugPrint(ineNumberController.text);
    debugPrint(rfcController.text);
    debugPrint("$kycDocFiles");*/

    try {
      isloading = true;
      update();
      var request = http.MultipartRequest(
        'POST',
        Uri.parse("${ApiUrlContainer.baseUrl}${ApiUrlContainer.signUpEndPoint}"),
      );


      // // Add the KYC files to the request
      for (var file in kycDocFiles) {


        String fileExtension = path.extension(file.path).toLowerCase();
        // Check the file extension
        if (fileExtension == ".jpeg") {
          var multipartFile = await http.MultipartFile.fromPath(
              'KYC', file.path,
              contentType: MediaType('image', 'jpeg'));
          request.files.add(multipartFile);

          print("It's a JPEG file.");
        } else if (fileExtension == ".png") {
          var multipartFile = await http.MultipartFile.fromPath(
              'KYC', file.path,
              contentType: MediaType('image', 'png'));
          request.files.add(multipartFile);

          print("It's a PNG file.");
        }

        else if (fileExtension == ".pdf") {
          var multipartFile = await http.MultipartFile.fromPath(
              'KYC', file.path,
              contentType: MediaType('application', 'pdf'));
          request.files.add(multipartFile);
          print("It's a PDF file.");
        }

        else if (fileExtension == ".x-x509-ca-cert") {
          var multipartFile = await http.MultipartFile.fromPath(
              'KYC', file.path,
              contentType: MediaType('application', 'x-x509-ca-cert'));
          request.files.add(multipartFile);
          print("It's a PDF file.");
        }
        else if (fileExtension == ".key") {
          var multipartFile = await http.MultipartFile.fromPath(
              'KYC', file.path,
              contentType: MediaType('application', 'octet-stream'));
          request.files.add(multipartFile);
          print("It's a PDF file.");
        }

        else {
          print("It's not a supported file type.");
        }
      }

      //
      //
      //   if (file.existsSync()) {
      //     try {
      //       var multipartFile = await http.MultipartFile.fromPath(
      //           'KYC', file.path,
      //           contentType: MediaType('application', 'pdf'));
      //       request.files.add(multipartFile);
      //     } on Exception catch (e) {
      //       print("Error is :${e.toString()}");
      //     }
      //   } else {
      //     print('File does not exist: ${file.path}');
      //   }
      //
      //   if (file.existsSync()) {
      //     try {
      //       var multipartFile = await http.MultipartFile.fromPath(
      //           "KYC", file.path,
      //           contentType: MediaType('image', 'jpeg'));
      //       request.files.add(multipartFile);
      //       if (kDebugMode) {
      //         print(file.path);
      //       }
      //     } on Exception catch (e) {
      //       if (kDebugMode) {
      //         print("Error is :${e.toString()}");
      //       }
      //     }
      //   } else {
      //     if (kDebugMode) {
      //       print('File does not exist: ${file.path}');
      //     }
      //     // Handle the missing file gracefully, e.g., skip it or show an error message.
      //   }
      // }
      //
      // // Add the image file to the request
      // if (imageFile != null && imageFile!.existsSync()) {
      //   try {
      //     var img = await http.MultipartFile.fromPath('image', imageFile!.path, contentType: MediaType('image', 'jpeg'));
      //     request.files.add(img);
      //   } on Exception catch (e) {
      //     if (kDebugMode) {
      //       print('Error adding image file to request: $e');
      //     }
      //     // Handle the error gracefully, e.g., show an error message to the user.
      //   }
      // }

 Map<String, String> params = {
        "fullName": fullNameController.text,
        "email": emailController.text,
        "gender": genderList[selectedGender],
        "dateOfBirth": dateController.text,
        "password": passwordController.text,
        "phoneNumber": "$phoneCode${phoneNumberController.text}",
        "address[country]": countryController.text,
        "address[city]": cityController.text,
        "address[state]": stateController.text,
        "address[line1]": laneController.text,
        "address[postal_code]": postalController.text,
        "ine": ineNumberController.text,
        "RFC": rfcController.text,
        "bankInfo[account_number]": accountController.text,
        "bankInfo[account_holder_name]": accountHolderController.text,
        "bankInfo[account_holder_type]": accountType[selectedAccount],
        "role": "host"
      };

      debugPrint("---------------------------->>>>>>>>>>>>>>>>>>>>>>>>$params");

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
        await signUpRepo.apiService.sharedPreferences.setString(
            SharedPreferenceHelper.userEmailKey,
            emailController.text.trim().toString());
        Get.toNamed(AppRoute.kycNumberVerification);
        Utils.snackBar("Successful".tr, "Sign Up Successful".tr);
        clearData();
        isloading = false;
        update();
      } else if (response.statusCode == 409) {
        isloading = false;
        update();
        Utils.snackBar("Alert!".tr, "User Already Exist".tr);
      }
      if (kDebugMode) {
        print(
            "${response.statusCode}----------------->>>>>> ${response.request}---------------->>>>>>>> ${response.reasonPhrase}");
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

  Future<void> dateOfBirthPicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      builder: (context, child) => Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.blueNormal, // <-- SEE HERE
              onPrimary: AppColors.whiteLight, // <-- SEE HERE
              onSurface: AppColors.blueNormal, // <-- SEE HERE
            ),
          ),
          child: child!),
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != dateController.text) {
      String datePattern = "dd/MM/yyyy";
      DateTime birthday = DateFormat(datePattern).parse("${picked.day}/${picked.month}/${picked.year}");
      DateTime today = DateTime.now();

      int yearDiff = today.year - birthday.year;
      int monthDiff = today.month - birthday.month;
      int dayDiff = today.day - birthday.day;
      if (yearDiff > 18 ||
          yearDiff == 18 && monthDiff > 0 ||
          yearDiff == 18 && monthDiff == 0 && dayDiff >= 0) {
        dateController.text = "${picked.day}/${picked.month}/${picked.year}";
        debugPrint(dateController.text);
        update();
      } else {
        dateController.clear();
        Utils.snackBar("Error".tr, "Minimum 18 Years Old".tr);
      }
      update();
    }
  }

  clearData() {
    fullNameController.text = "";
    emailController.text = "";
    dateController.text = "";
    passwordController.text = "";
    confirmPasswordController.text = "";
    phoneNumberController.text = "";
    // countryController.text = "";
    cityController.text = "";
    stateController.text = "";
    laneController.text = "";
    postalController.text = "";
    accountController.text = "";
    accountHolderController.text = "";
    ineNumberController.text = "";
    rfcController.text = "";
    ineOrPassportFileName = "";
    taxStampKeyFileName = "";
    cerStampKeyFileName = "";
    update();
  }
}
