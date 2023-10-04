import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddCarController extends GetxController {
  //Text Editing Controllers

  //AddCar Section-1
  final TextEditingController carModelName =
      TextEditingController(text: "BMW-420");
  final TextEditingController carLicenseNumber =
      TextEditingController(text: "A1213edfr4r");
  final TextEditingController carDescription =
      TextEditingController(text: "Very Fast");
  final TextEditingController carRentAmmount =
      TextEditingController(text: "1090");
  final TextEditingController insuranceStartDate =
      TextEditingController(text: "12-10-2023");
  final TextEditingController insuranceEndDate =
      TextEditingController(text: "20-10-2023");

  //AddCar Section-2
  final TextEditingController carColor = TextEditingController(text: "Black");
  final TextEditingController carDoor = TextEditingController(text: "4");
  final TextEditingController carSeats = TextEditingController(text: "4");
  final TextEditingController totalRun = TextEditingController(text: "30");
  final TextEditingController gearType = TextEditingController(text: "Manual");
  final TextEditingController registrationDate =
      TextEditingController(text: "22-08-2025");

  //String Data

  String selectedYear = "2023";
  String selectedText = "";

  List<File> addCarDocumentsFiles = [];

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
      uploadCarLic = File(result.files.single.path!);
      carLicenseFileName = result.files.single.name;

      addCarDocumentsFiles.add(uploadCarLic!);
      update();
    }
  }

  Future<void> pickCarLisPolicyFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ["pdf"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      uploadCarInsPolicy = File(result.files.single.path!);
      carInsPolicyFillName = result.files.single.name;
      addCarDocumentsFiles.add(uploadCarInsPolicy!);
      update();
    }
  }

  Future<void> pickCirculationFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ["pdf"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      uploadCirculationCard = File(result.files.single.path!);
      circulationFillName = result.files.single.name;
      addCarDocumentsFiles.add(uploadCirculationCard!);
      update();
    }
  }

  Future<void> pickCarInvoiceFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ["pdf"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      uploadCarInvoice = File(result.files.single.path!);
      carInvoiceFillName = result.files.single.name;
      addCarDocumentsFiles.add(uploadCarInvoice!);
      update();
    }
  }

  Future<void> pickREPUVEFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ["pdf"],
        type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      uploadREPUVE = File(result.files.single.path!);
      carREPUVEFillName = result.files.single.name;
      addCarDocumentsFiles.add(uploadREPUVE!);
      update();
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

  void addCar() {
    print(carModelName.text);
    print(carLicenseNumber.text);
    print(carDescription.text);
    print(carRentAmmount.text);
    print(insuranceStartDate.text);
    print(insuranceEndDate.text);
  }
}
