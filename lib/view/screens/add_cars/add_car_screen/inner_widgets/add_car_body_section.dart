import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/add_cars/add_car_controller/add_car_controller.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:renti_host/view/widgets/textfield/custom_textfield.dart';

class AddCarBodySection extends StatefulWidget {
  const AddCarBodySection({super.key});

  @override
  State<AddCarBodySection> createState() => _AddCarBodySectionState();
}

class _AddCarBodySectionState extends State<AddCarBodySection> {
  List<String> timeList = [
    "2024",
    "2023",
    "2022",
    "2021",
    "2020",
    "2019",
    "2018",
    "2017",
    "2016",
    "2015",
    "2014",
    "2013",
    "2012",
    "2011",
    "2010",
    "2009",
    "2008",
    "2007",
    "2006",
    "2005",
    "2004",
    "2003",
    "2002",
    "2001",
    "2000"
  ];

  @override
  Widget build(BuildContext context) {
    var hintStyle = GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.whiteNormalActive);

    return GetBuilder<AddCarController>(
      builder: (controller) {
        return Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: "Car Model Name".tr, bottom: 12, top: 16),

              //Care Model Name Text and TextField with select year section
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CustomTextField(
                      textEditingController: controller.carModelName,
                      textInputAction: TextInputAction.next,
                      hintText: "Enter car name".tr,
                      hintStyle: hintStyle,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field can not be empty".tr;
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.whiteNormalActive),
                      // Set border color
                      borderRadius:
                          BorderRadius.circular(10.0), // Set border radius
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: DropdownButton<String>(
                      underline: Container(
                        height: 0,
                      ),
                      value: controller.selectedYear.toString(),
                      onChanged: (newValue) {
                        setState(() {
                          controller.selectedYear = newValue!;
                        });
                      },
                      items: timeList.map((String year) {
                        return DropdownMenuItem<String>(
                          value: year,
                          child: Text(year),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),

              //Car license and TextField
              CustomText(text: "Car License Number".tr, top: 16, bottom: 12),
              CustomTextField(
                textEditingController: controller.carLicenseNumber,
                textInputAction: TextInputAction.next,
                hintText: "Enter license number".tr,
                hintStyle: hintStyle,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "This field can not be empty".tr;
                  }
                  return null;
                },
              ),

              //Car Description and TextField
              CustomText(text: "Car Description".tr, top: 16, bottom: 12),
              CustomTextField(
                textEditingController: controller.carDescription,
                textInputAction: TextInputAction.next,
                hintText: "Enter Description".tr,
                hintStyle: hintStyle,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "This field can not be empty".tr;
                  }
                  return null;
                },
              ),

              //Set Rent Amount and TextField
              CustomText(text: "Set Rent Amount /hr".tr, top: 16, bottom: 12),
              CustomTextField(
                textEditingController: controller.carRentAmmount,
                hintText: "Enter Amount".tr,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                hintStyle: hintStyle,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "This field can not be empty".tr;
                  }
                  return null;
                },
              ),

              //Insurance Date And Selected Date section
              CustomText(text: "Insurance Date".tr, top: 16, bottom: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      readOnly: true,cursorColor: Colors.transparent,
                      controller: controller.insuranceStartDate,
                      showCursor: true,keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
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
                        hintStyle: hintStyle,
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
                      onTap: () => controller.insuranceDateStart(context),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field can not be empty".tr;
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      readOnly: true,cursorColor: Colors.transparent,
                      controller: controller.insuranceEndDate,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      showCursor: true,
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
                        hintText: "End".tr,
                        hintStyle: hintStyle,
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
                      onTap: () => controller.insuranceDateEnd(context),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field can not be empty".tr;
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
