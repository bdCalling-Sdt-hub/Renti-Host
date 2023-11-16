import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/add_cars/add_car_controller/add_car_controller.dart';
import 'package:renti_host/view/screens/add_cars/add_car_specification/inner_widgets/car_service.dart';
import 'package:renti_host/view/screens/add_cars/add_car_specification/inner_widgets/car_type.dart';
import 'package:renti_host/view/screens/add_cars/add_car_specification/inner_widgets/gear_type.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:renti_host/view/widgets/textfield/custom_textfield.dart';

class AddCarSpecialScreen extends StatefulWidget {
  const AddCarSpecialScreen({super.key});

  @override
  State<AddCarSpecialScreen> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<AddCarSpecialScreen> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        extendBody: true,
        appBar: CustomAppBar(
            appBarContent:
                CustomBack(text: "Add Car".tr, color: AppColors.blackNormal)),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const BouncingScrollPhysics(),
          child: GetBuilder<AddCarController>(
            builder: (controller) {
              return Form(
                key: controller.formKey1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Type of car Standered or Luxurious
                    const CarType(),
                    const GearType(),
                    //const CustomText(text: AppStaticStrings.specialCharacteristics,fontWeight: FontWeight.w600),

                    // Car license Text and TextField
                    CustomText(text: "Car Color".tr, bottom: 12, top: 16),
                    CustomTextField(
                      textEditingController: controller.carColor,
                      hintText: "Enter car color".tr,
                      hintStyle: AppStaticStrings.hintStyle,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field can not be empty".tr;
                        }
                        return null;
                      },
                    ),

                    //Car Doors Text and TextField
                    CustomText(text: "Car Doors".tr, top: 16, bottom: 12),
                    CustomTextField(
                        textEditingController: controller.carDoor,
                        hintText: "Type Number".tr,
                        keyboardType: TextInputType.number,
                        hintStyle: AppStaticStrings.hintStyle,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field can not be empty".tr;
                        }
                        return null;
                      },
                    ),

                    //Car Seats Text and TextField
                    CustomText(text: "Car Seats".tr, top: 16, bottom: 12),
                    CustomTextField(
                        textEditingController: controller.carSeats,
                        hintText: "Type Number".tr,
                        keyboardType: TextInputType.number,
                        hintStyle: AppStaticStrings.hintStyle,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field can not be empty".tr;
                        }
                        return null;
                      },
                    ),

                    //Total Run Text and TextField
                    CustomText(text: "Total Run".tr, top: 16, bottom: 12),
                    CustomTextField(
                        textEditingController: controller.totalRun,
                        hintText: "Enter Total KM".tr,
                        keyboardType: TextInputType.number,
                        hintStyle: AppStaticStrings.hintStyle,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field can not be empty".tr;
                        }
                        return null;
                      },
                    ),

                    //Gear Type Text and TextField
                    CustomText(text: "Registration Date".tr, top: 16, bottom: 12),
                    TextFormField(
                      controller: controller.registrationDate,
                      showCursor: false,cursorColor: Colors.transparent,
                      //readOnly: true,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.number,
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackNormal),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.calendar_month_rounded,
                          size: 24,
                          color: AppColors.whiteDarkHover,
                        ),
                        hintText: "Start".tr,
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.whiteNormalActive),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: AppColors.whiteNormalActive, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: AppColors.whiteNormalActive, width: 1),
                        ),
                      ),
                     // onTap: () => controller.registrationDateStart(context),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field can not be empty".tr;
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 16),
                    const CarService(),
                    const SizedBox(height: 24),
                    controller.isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : CustomElevatedButton(
                        onPressed: () {
                          if(controller.formKey1.currentState!.validate()){
                            controller.addCarMultipleFilesAndParams();
                          }
                        },
                        titleText: "Add Car".tr,
                        buttonWidth: double.maxFinite,
                        buttonHeight: 52),

                    const SizedBox(height: 24),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
