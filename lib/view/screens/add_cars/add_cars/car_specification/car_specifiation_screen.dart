import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/add_cars/add_cars/car_specification/inner_widgets/car_service.dart';
import 'package:renti_host/view/screens/car_details/car_details/car_details_screen.dart';
import 'package:renti_host/view/widgets/button/bottom_nav_button.dart';

class CarSpecifications extends StatefulWidget {
  const CarSpecifications({super.key});

  @override
  State<CarSpecifications> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarSpecifications> {
  bool isClicked = false;
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

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text("Special Characteristics",
                  style: TextStyle(
                    color: Color(0xff2E2C2C),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  )),
              const SizedBox(height: 16,),
              // car license field
              const Text("Car Color",
                  style: TextStyle(
                    color: Color(0xff2E2C2C),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              const SizedBox(height: 12,),
              TextFormField(
                showCursor: true,
                style: const TextStyle(color: Color(0xff2E2C2C)),
                decoration: InputDecoration(
                  hintText: "Type color here...",
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
              const SizedBox(height: 16,),
              const Text("Car Color",
                  style: TextStyle(
                    color: Color(0xff2E2C2C),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                showCursor: true,
                style: const TextStyle(color: Color(0xff2E2C2C)),
                decoration: InputDecoration(
                  hintText: "Type color here...",
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
              const SizedBox(
                height: 16,
              ),
              const Text("Car Doors",
                  style: TextStyle(
                    color: Color(0xff2E2C2C),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                showCursor: true,
                style: const TextStyle(color: Color(0xff2E2C2C)),
                decoration: InputDecoration(
                  hintText: "Type number here...",
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
              const SizedBox(
                height: 16,
              ),
              const Text("Car Seats",
                  style: TextStyle(
                    color: Color(0xff2E2C2C),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                showCursor: true,
                style: TextStyle(color: Color(0xff2E2C2C)),
                decoration: InputDecoration(
                  hintText: "Type number here....",
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
              const SizedBox(
                height: 16,
              ),
              const Text("Total Run",
                  style: TextStyle(
                    color: Color(0xff2E2C2C),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                showCursor: true,
                style: const TextStyle(color: Color(0xff2E2C2C)),
                decoration: InputDecoration(
                  hintText: "Type km here...",
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
              const SizedBox(
                height: 16,
              ),

              const SizedBox(
                height: 16,
              ),
              // car license field
              const Text("Gear Type",
                  style: TextStyle(
                    color: Color(0xff2E2C2C),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                showCursor: true,
                style: const TextStyle(color: Color(0xff2E2C2C)),
                decoration: InputDecoration(
                  hintText: "Gear Type here...",
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
                      borderSide: const BorderSide(color: Color(0xffCCCCCC), width: 1)),
                ),
              ),
               const SizedBox(height: 16,),
              const CarService()


            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavButton(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>CarDetailsScreen()));
             setState(() {
               isClicked == !isClicked;
             });

          }, buttonName: "Add Car", buttonColor: isClicked ?  const Color(0xff000b90): const Color(0xff999999)
      ),
    );
  }
}
