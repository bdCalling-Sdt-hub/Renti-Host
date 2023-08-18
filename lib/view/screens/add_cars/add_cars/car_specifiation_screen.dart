import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/car_list/car_list/car_list_screen.dart';

class CarSpecifications extends StatefulWidget {
  const CarSpecifications({super.key});

  @override
  State<CarSpecifications> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarSpecifications> {
  @override
  Widget build(BuildContext context) {

    List< String> seatList = ["Baby Car Seat", " Sunroof", ' Bluetooth','GPS'];
    int selectedItem = 0;
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
              const SizedBox(
                height: 16,
              ),
              // car license field
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
                style: TextStyle(color: Color(0xff2E2C2C)),
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
                      BorderSide(color: Color(0xffCCCCCC), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                      BorderSide(color: Color(0xffCCCCCC), width: 1)),
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
                      BorderSide(color: Color(0xffCCCCCC), width: 1)),
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

             Column(
               children:List.generate( seatList.length,(index){
                   return GestureDetector(
                     onTap: (){
                       setState(() {
                         selectedItem = index;
                       });
                     },
                     child: Padding(
                       padding: const EdgeInsets.only(left: 16.0, bottom: 20),
                       child: Row(
                         children: [
                           Container(
                             height: 20,
                             width: 20,
                             decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color:  index == selectedItem ? const Color(0xff000B90) : const Color(0xffffffff),
                                 border: Border.all(color: const Color(0xffcccccc),width: 1),
                                 boxShadow: [
                                   BoxShadow(
                                       color : const Color(0xff000000).withOpacity(0.4),
                                       offset: const Offset(0, 0),
                                       blurRadius: 2
                                   )
                                 ]
                             ),
                           ),
                           const SizedBox(width: 10,),
                           Text(seatList[index],style: const TextStyle(color: Color(0xff2E2C2C),fontSize:14, fontWeight:FontWeight.w400 ),)
                         ],
                       ),
                     ),
                   );
                 })

             ),


              const SizedBox(height: 24,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const CarListScreen()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xff999999),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 16.0),
                    child: Center(
                        child: Text(
                          "Add car",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w600),
                        )),
                  ),

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
