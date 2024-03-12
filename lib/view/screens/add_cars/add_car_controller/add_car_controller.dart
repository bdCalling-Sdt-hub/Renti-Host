import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:mime/mime.dart';
import 'package:renti_host/core/global/api_url_container.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/add_cars/google_map_model/google_map_mpdel.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:path/path.dart' as path;

class AddCarController extends GetxController {
  //Text Editing Controllers

  //AddCar Section-1
  final TextEditingController carModelName = TextEditingController();
  final TextEditingController carLicenseNumber = TextEditingController();
  final TextEditingController carDescription = TextEditingController();
  final TextEditingController carRentAmmount = TextEditingController();
  final TextEditingController insuranceStartDate = TextEditingController();
  final TextEditingController insuranceEndDate = TextEditingController();

  //AddCar Section-2
  final TextEditingController carColor = TextEditingController();
  final TextEditingController carDoor = TextEditingController();
  final TextEditingController carSeats = TextEditingController();
  final TextEditingController totalRun = TextEditingController();
  final TextEditingController gearType = TextEditingController();
  final TextEditingController registrationDate = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();

  bool isLoading = false;

  //String Data

  String selectedYear = "2023";
  String selectedText = "Baby Car Seat";
  String selectedCarType = "Standard";
  String selectedGearType = "Manual";


  List<File> addCarImages = [];

  List  addCarDocumentsFiles = [];
  String uploadCarLicPath = "";
  String uploadCarInsPolicyPath = "";
  String uploadCirculationCardPath = "";
  String uploadCarInvoicePath = "";
  String uploadREPUVEPath = "";

  String carLicenseFileName = "";
  String carInsPolicyFillName = "";
  String circulationFillName = "";
  String carInvoiceFillName = "";
  String carREPUVEFillName = "";


  String checkExtension(String filePath){
    String fileExtension = path.extension(filePath).toLowerCase();
    switch(fileExtension){
      case ".pdf":
        return "file";
      case ".key":
        return "file";
      case ".cer":
        return "file";
      case ".jpg":
        return "image";
      case ".png":
        return "image";
      case ".jpeg":
        return "image";
      case ".heic":
        return "image";
    }
    return  fileExtension;
  }
  removeFile1(){
    uploadCarLicPath="";
    update();
  }
  removeFile2(){
    uploadCarInsPolicyPath="";
    update();
  }
  removeFile3(){
    uploadCirculationCardPath ="";
    update();
  }
  removeFile4(){
    uploadCarInvoicePath ="";
    update();
  }
  removeFile5(){
    uploadREPUVEPath ="";
    update();
  }



  bool checkFilePathEmpty(){
    if(uploadCarLicPath.isNotEmpty && uploadCarInsPolicyPath.isNotEmpty && uploadCirculationCardPath.isNotEmpty && uploadCarInvoicePath.isNotEmpty && uploadREPUVEPath.isNotEmpty) {
      return true;
    }else{
      Utils.snackBar("Alert".tr, "This Files can not be empty".tr);
      return false;
    }
  }

  Future<void> pickCarLicFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        allowedExtensions: ["pdf","key", "cer","jpg","png","jpeg","heic"],
        type: FileType.custom);
    if (result != null && result.files.isNotEmpty) {
      uploadCarLicPath=result.files.first.path!;
      carLicenseFileName=result.files.first.name;
      update();
    }
  }
  Future<void> pickCarLisPolicyFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        allowedExtensions: ["pdf","key", "cer","jpg","png","jpeg","heic"],
        type: FileType.custom);
    if (result != null && result.files.isNotEmpty) {
      uploadCarInsPolicyPath=result.files.first.path!;
      carInsPolicyFillName=result.files.first.name;
      update();
    }
  }
  Future<void> pickCirculationFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        allowedExtensions: ["pdf","key", "cer","jpg","png","jpeg","heic"],
        type: FileType.custom);
    if (result != null && result.files.isNotEmpty) {
      uploadCirculationCardPath=result.files.first.path!;
      circulationFillName= result.files.single.name;
      update();
    }
  }
  Future<void> pickCarInvoiceFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        allowedExtensions: ["pdf","key", "cer","jpg","png","jpeg","heic"],
        type: FileType.custom);
    if (result != null && result.files.isNotEmpty) {
      uploadCarInvoicePath=result.files.first.path!;
      carInvoiceFillName= result.files.single.name;
      update();
    }
  }
  Future<void> pickREPUVEFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        allowedExtensions: ["pdf","key", "cer","jpg","png","jpeg","heic"],
        type: FileType.custom);
    if (result != null && result.files.isNotEmpty) {
      uploadREPUVEPath=result.files.first.path!;
      carREPUVEFillName= result.files.single.name;
      update();
    }
  }

  File? firstImg;
  File? secondImg;
  File? thirdImg;
  final imagePicker = ImagePicker();

  void openGallery({required int index}) async {
    final pickedFile = await imagePicker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      File pickedImage = File(pickedFile.path);
      if (index == 0) {
        firstImg = File(pickedFile.path);
        addCarImages.add(firstImg!);
        update();
      } else if (index == 1) {
        secondImg = File(pickedFile.path);
        addCarImages.add(secondImg!);
        update();
      } else if (index == 2) {
        thirdImg = File(pickedFile.path);
        addCarImages.add(thirdImg!);
        update();
      }
      print('======================>Image path: ${pickedImage.path}');
    }
  }

  Future<void> addCarMultipleFilesAndParams() async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString(SharedPreferenceHelper.accessTokenKey);
    isLoading = true;
    update();

    try {
      var request = http.MultipartRequest('POST',Uri.parse("${ApiUrlContainer.baseUrl}${ApiUrlContainer.carAddEndPoint}"),);

      /// ==================== Add the upload car licence KYC files to the request=======================>

      if (uploadCarLicPath.isNotEmpty) {
        debugPrint("=========> passportPath $uploadCarLicPath");
        var mimeType = lookupMimeType(uploadCarLicPath);
        var multipartImg = await http.MultipartFile.fromPath(
          'KYC',
          uploadCarLicPath,
          contentType: MediaType.parse(mimeType!),
        );
        request.files.add(multipartImg);
      }

      /// ==================== Add the uploadcarlicencePrivacy Pplicy KYC files to the request=======================>

      if (uploadCarInsPolicyPath.isNotEmpty) {
        debugPrint("======> stampKeyPath  $uploadCarInsPolicyPath");
        var mimeType = lookupMimeType(uploadCarInsPolicyPath);
        var multipartImg = await http.MultipartFile.fromPath(
          'KYC',
          uploadCarInsPolicyPath,
          contentType: MediaType.parse(mimeType!),
        );
        request.files.add(multipartImg);
      }


      /// ==================== Add the upload car circulationCard KYC files to the request=======================>


      if (uploadCirculationCardPath.isNotEmpty) {
        debugPrint("========>stampCerPath  $uploadCirculationCardPath");
        var mimeType = lookupMimeType(uploadCirculationCardPath);
        var multipartImg = await http.MultipartFile.fromPath(
          'KYC',
          uploadCirculationCardPath,
          contentType: MediaType.parse(mimeType!),
        );
        request.files.add(multipartImg);
      }

      /// ==================== Add the upload car invoice KYC files to the request=======================>

      if (uploadCarInvoicePath.isNotEmpty) {
        debugPrint("========>stampCerPath  $uploadCarInvoicePath");
        var mimeType = lookupMimeType(uploadCarInvoicePath);
        var multipartImg = await http.MultipartFile.fromPath(
          'KYC',
          uploadCarInvoicePath,
          contentType: MediaType.parse(mimeType!),
        );
        request.files.add(multipartImg);
      }

      /// ==================== Add the upload car REPUVE KYC files to the request=======================>

      if (uploadREPUVEPath.isNotEmpty) {
        debugPrint("========>stampCerPath  $uploadREPUVEPath");
        var mimeType = lookupMimeType(uploadREPUVEPath);
        var multipartImg = await http.MultipartFile.fromPath(
          'KYC',
          uploadREPUVEPath,
          contentType: MediaType.parse(mimeType!),
        );
        request.files.add(multipartImg);
      }
         int imageCount = 0;
      for (var img in addCarImages) {
        if (imageCount == 3 && img != null && img.existsSync()) {
          try {
            var mimeType = lookupMimeType(img.path);
            print("==================>MimeType=>$mimeType");

            var multipartImg = await http.MultipartFile.fromPath(
              'image',
              img.path,
              contentType: MediaType.parse(mimeType!),
            );
            request.files.add(multipartImg);
            imageCount++;
          } on Exception catch (e) {
            print("Error is :${e.toString()}");
          }
        } else {
          print('File does not exist, is null, or more than 3 images have been selected.');
        }
      }


      // Add the parameters to the request
      Map<String, String> params = {
        "carModelName": carModelName.text,
        "year": selectedYear,
        "carLicenseNumber": carLicenseNumber.text,
        "carDescription": carDescription.text,
        "insuranceStartDate": insuranceStartDate.text,
        "insuranceEndDate": insuranceEndDate.text,
        "carColor": carColor.text,
        "carDoors": carDoor.text,
        "carSeats": carSeats.text,
        "totalRun": "${totalRun.text} km",
        "hourlyRate": carRentAmmount.text,
        "gearType": selectedGearType,
        "specialCharacteristics": selectedText,
        "registrationDate": registrationDate.text,
        "carType": selectedCarType,
        "carLocation": searchTextController.text,
      };

      print(params);

      params.forEach((key, value) {
        request.fields[key] = value;
      });

      request.headers['Content-Type'] = 'multipart/form-data';
      request.headers['Authorization'] = 'Bearer $token';

      // Send the request
      var response = await request.send();

      if (response.statusCode == 201) {
        isLoading = false;
        update();
        clearData();
        Get.offAllNamed(AppRoute.navigation);
        Utils.snackBar("Successful".tr, "Successfully car added".tr);
      } else {
        isLoading = false;
        update();
        if (kDebugMode) {
          print('Response body: ${await response.stream.bytesToString()}');
        }
        Utils.toastMessage("Somethings went wrong ${response.statusCode}");
      }
    } catch (e) {
      isLoading = false;
      update();
      Utils.snackBar("Error".tr, "Somethings went wrong".tr);
    }
    isLoading = false;
    update();
  }

  Future<void> insuranceDateStart(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != insuranceStartDate.text) {
      insuranceStartDate.text = "${picked.year}-${picked.month}-${picked.day}";
      update();
    }
  }

  Future<void> insuranceDateEnd(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != insuranceEndDate.text) {
      insuranceEndDate.text = "${picked.year}-${picked.month}-${picked.day}";
      update();
    }
  }

  Future<void> registrationDateStart(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != registrationDate.text) {
      registrationDate.text = "${picked.year}-${picked.month}-${picked.day}";
      update();
    }
  }

  /// location controller
  TextEditingController searchTextController = TextEditingController();
  List<Prediction> _predictionList=[];
  Future<List<Prediction>> searchLocation(BuildContext context, String? text) async {
    if(text != null && text.isNotEmpty) {
      var response = await getSearchLocation(text);
      if (response.runtimeType!=int) {
        _predictionList = [];
        response['predictions'].forEach((prediction)
        => _predictionList.add(Prediction.fromJson(prediction)));
      } else {
        // ApiChecker.checkApi(response);
      }
    }
    return _predictionList;
  }

  Future<dynamic> getSearchLocation(String text)async{
    try {
      var response = await http.get(Uri.parse("https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$text&key=AIzaSyCfGzSTTEXbcFCAzebzuY92i28NtuUcCJA"));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return response.statusCode;
      }
    } on Exception catch (e) {
      if (kDebugMode) {
        return print("Data fetch Error. Reason ${e.toString()}");
      }
      return 0;
    }

  }


  clearData() {
    isLoading = false;
    carModelName.text = "";
    carLicenseNumber.text = "";
    carDescription.text = "";
    carRentAmmount.text = "";
    insuranceStartDate.text = "";
    insuranceEndDate.text = "";

    //AddCar Section-2
    carColor.text = "";
    carDoor.text = "";
    carSeats.text = "";
    totalRun.text = "";
    gearType.text = "";
    registrationDate.text = "";
    totalRun.text = "";

    carLicenseFileName = "";
    carInsPolicyFillName = "";
    circulationFillName = "";
    carInvoiceFillName = "";
    carREPUVEFillName = "";

  }
}

