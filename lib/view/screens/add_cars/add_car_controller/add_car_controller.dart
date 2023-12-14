import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:renti_host/core/global/api_url_container.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/add_cars/google_map_model/google_map_mpdel.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  List<File> addCarDocumentsFiles = [];
  List<File> addCarImages = [];

  File? uploadCarLic;
  File? uploadCarInsPolicy;
  File? uploadCirculationCard;
  File? uploadCarInvoice;
  File? uploadREPUVE;

  String carLicenseFileName = "";
  String carInsPolicyFillName = "";
  String circulationFillName = "";
  String carInvoiceFillName = "";
  String carREPUVEFillName = "";

  Future<void> pickCarLicFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ["pdf"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      PlatformFile file = result.files.first;
      if (file.extension == 'pdf') {
        uploadCarLic = File(result.files.single.path!);
        carLicenseFileName = result.files.single.name;
        addCarDocumentsFiles.add(uploadCarLic!);
        update();
      }
      else{
        Utils.snackBar("Error".tr, "Only PDF file allow".tr);
      }
    }
  }

  Future<void> pickCarLisPolicyFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ["pdf"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      PlatformFile file = result.files.first;
      if(file.extension == 'pdf'){
        uploadCarInsPolicy = File(result.files.single.path!);
        carInsPolicyFillName = result.files.single.name;
        addCarDocumentsFiles.add(uploadCarInsPolicy!);
        update();
      }else{
        Utils.snackBar("Error".tr, "Only PDF file allow".tr);
      }
    }
  }

  Future<void> pickCirculationFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ["pdf"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      PlatformFile file = result.files.first;
      if(file.extension == 'pdf'){
        uploadCirculationCard = File(result.files.single.path!);
        circulationFillName = result.files.single.name;
        addCarDocumentsFiles.add(uploadCirculationCard!);
        update();
      }else{
        Utils.snackBar("Error".tr, "Only PDF file allow".tr);
      }
    }
  }

  Future<void> pickCarInvoiceFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ["pdf"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      PlatformFile file = result.files.first;
      if(file.extension == 'pdf'){
        uploadCarInvoice = File(result.files.single.path!);
        carInvoiceFillName = result.files.single.name;
        addCarDocumentsFiles.add(uploadCarInvoice!);
        update();
      }else{
        Utils.snackBar("Error".tr, "Only PDF file allow".tr);
      }
    }
  }

  Future<void> pickREPUVEFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ["pdf"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      PlatformFile file = result.files.first;
      if(file.extension == 'pdf'){
        uploadREPUVE = File(result.files.single.path!);
        carREPUVEFillName = result.files.single.name;
        addCarDocumentsFiles.add(uploadREPUVE!);
        update();
      }else{
        Utils.snackBar("Error".tr, "Only PDF file allow".tr);
      }
    }
  }

  void removeCarLicFile() {
    uploadCarLic = null;
    carLicenseFileName = "";
    addCarDocumentsFiles.removeAt(0);
    update();
  }

  void removeCarInsPolicyFile() {
    uploadCarInsPolicy = null;
    carInsPolicyFillName = "";
    addCarDocumentsFiles.removeAt(1);
    update();
  }

  void removeCirculationFile() {
    uploadCirculationCard = null;
    circulationFillName = "";
    addCarDocumentsFiles.removeAt(2);
    update();
  }

  void removeCarInvoiceFile() {
    uploadCarInvoice = null;
    carInvoiceFillName = "";
    addCarDocumentsFiles.removeAt(3);
    update();
  }

  void removeREPUVEFile() {
    uploadREPUVE = null;
    carREPUVEFillName = "";
    addCarDocumentsFiles.removeAt(4);
    update();
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
    }
  }

  Future<void> addCarMultipleFilesAndParams() async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString(SharedPreferenceHelper.accessTokenKey);
    isLoading = true;
    update();

    try {
      var request = http.MultipartRequest(
        'POST',
        Uri.parse(
            "${ApiUrlContainer.baseUrl}${ApiUrlContainer.carAddEndPoint}"),
      );

      // Add the KYC files to the request
      for (var file in addCarDocumentsFiles) {
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
        }
      }

      for (var img in addCarImages) {
        if (img.existsSync()) {
          try {
            var multipartImg = await http.MultipartFile.fromPath(
                'image', img.path,
                contentType: MediaType('image', 'jpeg'));
            request.files.add(multipartImg);
          } on Exception catch (e) {
            print("Error is :${e.toString()}");
          }
        } else {
          print('File does not exist: ${img.path}');
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

