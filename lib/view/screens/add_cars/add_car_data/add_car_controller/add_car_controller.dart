import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddCarController extends GetxController{

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
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: false, allowedExtensions: ["pdf"], type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      uploadCarLic = File(result.files.single.name);
      carLicenseFileName = result.files.single.name;

      addCarDocumentsFiles.add(uploadCarLic!);
      update();
    }
  }

  Future<void> pickCarLisPolicyFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: false, allowedExtensions: ["pdf"], type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      uploadCarInsPolicy = File(result.files.single.name);
      carInsPolicyFillName = result.files.single.name;
      addCarDocumentsFiles.add(uploadCarInsPolicy!);
      update();
    }
  }

  Future<void> pickCirculationFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: false, allowedExtensions: ["pdf"], type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      uploadCirculationCard = File(result.files.single.name);
      circulationFillName = result.files.single.name;
      addCarDocumentsFiles.add(uploadCirculationCard!);
      update();
    }
  }

  Future<void> pickCarInvoiceFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: false, allowedExtensions: ["pdf"], type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      uploadCarInvoice = File(result.files.single.name);
      carInvoiceFillName = result.files.single.name;
      addCarDocumentsFiles.add(uploadCarInvoice!);
      update();
    }
  }

  Future<void> pickREPUVEFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: false, allowedExtensions: ["pdf"], type: FileType.custom);

    if (result != null && result.files.isNotEmpty) {
      uploadREPUVE = File(result.files.single.name);
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

  void openGallery() async{
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery, maxHeight: 120, maxWidth: 120);

    if(pickedFile != null){
      imageFile = File(pickedFile.path);
      update();
    }
  }

  void openCamera(BuildContext context)  async{
    final pickedFile = await ImagePicker().pickImage(
        source: ImageSource.camera,
        maxHeight: 120,
        maxWidth: 120
    );

    if(pickedFile != null) {
      imageFile = File(pickedFile.path);
      update();
    }
  }

}