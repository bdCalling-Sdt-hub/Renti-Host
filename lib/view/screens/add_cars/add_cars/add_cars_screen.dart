import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/add_cars/add_cars/car_specification/car_specifiation_screen.dart';
import 'package:renti_host/view/screens/add_cars/add_cars/inner_widgets/body_section.dart';
import 'package:renti_host/view/screens/add_cars/add_cars/inner_widgets/add_car_bottom_section.dart';
import 'package:renti_host/view/screens/add_cars/add_cars/upload_car_screen.dart';
import 'package:renti_host/view/widgets/button/bottom_nav_button.dart';
class AddCarsScreen extends StatefulWidget {
  const AddCarsScreen({super.key});

  @override
  State<AddCarsScreen> createState() => _AddCarsScreenState();
}

class _AddCarsScreenState extends State<AddCarsScreen> {

  String dropdownValue = 'Year';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },

          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff2E2C2C),
            size: 18,
          ),
        ),
        titleSpacing: -8,
        title: const Text(
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
                padding: const EdgeInsets.all(0),
                borderType: BorderType.RRect,
                radius: const Radius.circular(8),
                color: const Color(0XFFB0B3DD),
                strokeWidth: 1,
                dashPattern: const [10, 10],
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: const Color(0xffE6E7F4),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 16.0),
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
                                color: const Color(0xff000B90),
                                borderRadius: BorderRadius.circular(8)),
                            child: const Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 16.0),
                              child: Center(
                                  child: Text(
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
              const SizedBox(
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
                  child: const Center(
                    child: Text("Capture Photo", style: TextStyle(
                          color: Color(0xff000B90),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )),
                  )
              ),
              const SizedBox(height: 16,),
              const AddCarBodySection(),
              const SizedBox(height: 16,),
              const AddcarBottomSection()
            ],
          ),
        ),
      ),
      
      bottomNavigationBar: BottomNavButton(onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (_)=>const UploadCarScreen()));

      }, buttonName: "Continue", buttonColor: const Color(0xff000b90)),
    );
  }
}
