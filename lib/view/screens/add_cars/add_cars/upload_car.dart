import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/add_cars/add_cars/inner_widgets/custom_upload_car.dart';

class UploadCar extends StatefulWidget {
  const UploadCar({super.key});

  @override
  State<UploadCar> createState() => _UploadCarState();
}

class _UploadCarState extends State<UploadCar> {
  String dropdownValue = 'Year';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff2E2C2C),
            size: 18,
          ),
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
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                         height: 146,
                         width:171,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         image: DecorationImage(
                           image: AssetImage("assets/images/black_car.png"),
                           fit: BoxFit.fill
                         ),
                       ),
                     ),
                   SizedBox(width: 8,),
                   Column(
                     children: [

                       Container(
                           height: 69,
                           width:171,

                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(8),
                           image: DecorationImage(
                               image: AssetImage("assets/images/black_car.png"),
                               fit: BoxFit.fill
                           ),
                         ),

                       ),
                       SizedBox(height: 8,),
                       Container(
                            height: 69,
                            width:171,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                               image: AssetImage("assets/images/black_car.png"),
                               fit: BoxFit.fill
                           ),
                         ),

                       ),
                      
                     ],
                   ),
                ],
              ),

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
