import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/add_cars/add_cars/car_specification/car_specifiation_screen.dart';
import 'package:renti_host/view/screens/add_cars/add_cars/inner_widgets/body_section.dart';
import 'package:renti_host/view/screens/add_cars/add_cars/inner_widgets/add_car_bottom_section.dart';
import 'package:renti_host/view/widgets/button/bottom_nav_button.dart';

class UploadCarScreen extends StatefulWidget {
  const UploadCarScreen({super.key});

  @override
  State<UploadCarScreen> createState() => _UploadCarState();
}

class _UploadCarState extends State<UploadCarScreen> {
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
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                           height: 146,

                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(8),
                           image: const DecorationImage(
                             image: AssetImage("assets/images/black_car.png"),
                             fit: BoxFit.fill
                           ),
                         ),
                       ),
                  ),
                   const SizedBox(width: 8,),
                   Expanded(
                     child: Column(
                       children: [
                         Container(
                             height: 69,

                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(8),
                             image: const DecorationImage(
                                 image: AssetImage("assets/images/black_car.png"),
                                 fit: BoxFit.fill
                             ),
                           ),

                         ),
                         const SizedBox(height: 8,),
                         Container(
                              height: 69,

                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: const DecorationImage(
                                 image: AssetImage("assets/images/black_car.png"),
                                 fit: BoxFit.fill
                             ),
                           ),

                         ),
                        
                       ],
                     ),
                   ),
                ],
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
        Navigator.push(context, MaterialPageRoute(builder: (_)=>const CarSpecifications()));
      }, buttonName: "Continue", buttonColor: const Color(0xff000b90)),
    );

  }
}
