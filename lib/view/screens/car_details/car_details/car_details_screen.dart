import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/car_details/car_details/inner_wigdets/custom_alert_box.dart';
import 'package:renti_host/view/screens/car_details/car_details/inner_wigdets/document_file.dart';
import 'package:renti_host/view/screens/car_details/car_details/inner_wigdets/pop_menu.dart';
import 'package:renti_host/view/screens/car_details/car_details/inner_wigdets/reserved_details.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({super.key});

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon:  const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff2E2C2C),
            size: 18,
          ) ,
          onPressed: (){
          Navigator.pop(context);
          },

        ),
        titleSpacing: -8,
        title: const Text(
          "Car Details",
          style: TextStyle(
            color: Color(0xff2E2C2C),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: const [
          PopUpMenu()
          // Icon(Icons.more_vert_outlined,color: Colors.black,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      mainAxisExtent: 72,
                      crossAxisCount: 2,
                     childAspectRatio: MediaQuery.of(context).size.width,

                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 72,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image:  const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/black_car.png"))),
                    );
                  }),
                 const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Toyota Harrier",style: TextStyle(color: Color(0xff000B90) ,fontSize: 18,fontWeight:FontWeight.w500 ,),),
                  Container(
                    width: 71,
                    // alignment: Alignment.center,
                    padding: const EdgeInsetsDirectional.symmetric(vertical: 0, horizontal: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xffE6F6F4),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical:4),
                      child: Text("Active", textAlign: TextAlign.center,style: TextStyle(color: Color(0xff00A991),fontSize: 10 ,fontWeight:FontWeight.w400 ),),
                    ),
                  ),
                ],
               ),
                const SizedBox(height: 8,),
                const Text(" \$ 100/day",style: TextStyle(color: Color(0xFF2E2C2C) ,fontSize: 16,fontWeight:   FontWeight.w500)),
                SizedBox(height: 40,),

               const ReservedDetails(),

              const SizedBox(height: 16,),

              DocumentsFiles()


            ],
          ),
        ),
      ),
    );
  }
}
 