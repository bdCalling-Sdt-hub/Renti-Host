import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/add_cars/add_cars/inner_widgets/custom_upload_car.dart';
import 'package:renti_host/view/screens/add_cars/add_cars/upload_car.dart';

class AddCarsScreen extends StatefulWidget {
  const AddCarsScreen({super.key});

  @override
  State<AddCarsScreen> createState() => _AddCarsScreenState();
}

class _AddCarsScreenState extends State<AddCarsScreen> {
  // String selectedValue = "USA";
  // List<DropdownMenuItem<String>> get dropdownItems{
  //   List<DropdownMenuItem<String>> menuItems = [
  //     DropdownMenuItem(child: Text("USA"),value: "USA"),
  //     DropdownMenuItem(child: Text("Canada"),value: "Canada"),
  //     DropdownMenuItem(child: Text("Brazil"),value: "Brazil"),
  //     DropdownMenuItem(child: Text("England"),value: "England"),
  //   ];
  //   return menuItems;
  // }

  String dropdownValue = 'Year';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Color(0xff2E2C2C),
          size: 18,
        ),
        titleSpacing: -8,
        title: Text(
          "Add Cars",
          style: TextStyle(
            color: Color(0xff2E2C2C),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // upload car image
            children: [
              DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(10),
                color: Color(0XFFB0B3DD),
                strokeWidth: 1,
                dashPattern: [
                  10,
                  10,
                ],
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xffE6E7F4),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Icon(
                            Icons.image,
                            size: 50,
                            color: Color(0xff000B90),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 16),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Color(0xff000B90),
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Center(
                                  child: const Text(
                                "Uploaded Car Photo",
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                  height: 57,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(color: const Color(0xff000B90), width: 1)),
                  child: Center(
                    child: Text("Upload Car Photo",
                        style: TextStyle(
                          color: Color(0xff000B90),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )),
                  )),
              SizedBox(
                height: 16,
              ),
              Text("Car Model Name",
                  style: TextStyle(
                    color: Color(0xff2E2C2C),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                height: 12,
              ),

              Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: TextFormField(
                      showCursor: false,
                      style: TextStyle(color: Color(0xff2E2C2C)),
                      decoration: InputDecoration(
                        hintText: "Type name here",
                        hintStyle: const TextStyle(
                            color: Color(0xffcccccc),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xffCCCCCC), width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xffCCCCCC), width: 1)),
                      ),
                    ),
                  ),
                   SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 3,
                     child: DropdownButtonFormField(

                       elevation: 0,
                       icon: Icon(Icons.keyboard_arrow_down,color: Color(0xffcccccc),size:20 ,),

                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xffCCCCCC), width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xffCCCCCC), width: 1),
                          ),

                        ),

                        dropdownColor: const Color(0xffffffff),
                        value: dropdownValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>['Year', '2013', '2014','2015', '2016', '2017', '2018', '2019', '2020', '2021', '2022', '2023', '2024', '2025', '2026', '2027' ]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(fontSize: 16,color: Color(0xffccccccc)),
                            ),
                          );
                        }).toList(),
                      ))
                ],
              ),
              SizedBox(
                height: 16,
              ),
              // car license field
              Text("Car License Number",
                  style: TextStyle(
                    color: Color(0xff2E2C2C),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                showCursor: true,
                style: TextStyle(color: Color(0xff2E2C2C)),
                decoration: InputDecoration(
                  hintText: "Type license number here...",
                  hintStyle: TextStyle(
                      color: Color(0xffcccccc),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          BorderSide(color: Color(0xffCCCCCC), width: 1)),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              // car description
              Text("Car Description",
                  style: TextStyle(
                    color: Color(0xff2E2C2C),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                height: 12,
              ),
              // car description  field
              SizedBox(
              height: 100,
                // Height dosn't work
                child: TextFormField(
                  textInputAction: TextInputAction.newline,
                  keyboardType: TextInputType.multiline,

                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "type description here...",
                    hintStyle: TextStyle(color: Color(0xffcccccc)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            BorderSide(color: Color(0xffCCCCCC), width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            BorderSide(color: Color(0xffCCCCCC), width: 1)),
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),
              // car license field
              Text("Set Rent Amount",
                  style: TextStyle(
                    color: Color(0xff2E2C2C),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                showCursor: true,
                style: TextStyle(color: Color(0xff2E2C2C)),
                decoration: InputDecoration(
                  hintText: "Type amount here...",
                  hintStyle: TextStyle(
                      color: Color(0xffcccccc),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                      BorderSide(color: Color(0xffCCCCCC), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                      BorderSide(color: Color(0xffCCCCCC), width: 1)),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              CustomUploadCar()

            ],
          ),
        ),
      ),
    );
  }
}
