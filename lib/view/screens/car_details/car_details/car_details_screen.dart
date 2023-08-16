import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/%20home/home/inner_widgets/alert_box.dart';
import 'package:renti_host/view/screens/car_details/car_details/inner_wigdets/custom_alert_box.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({super.key});

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:  Icon(
          Icons.arrow_back_ios_new,
          color: Color(0xff2E2C2C),
          size: 18,
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
        actions:  [
          PopupMenuButton(
               color: Color(0xffffffff),

                icon:Icon(Icons.more_vert_outlined,color: Colors.black,),
                elevation: 1,
              position: PopupMenuPosition.under,
              itemBuilder: (context)=>[
               const PopupMenuItem(child: Row(

                 children: [
                   Icon(Icons.note_alt_rounded,size: 20,color: Color(0xff2E2C2C),),
                   SizedBox(width: 8,),
                   Text("Edit Car",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 14,fontWeight: FontWeight.w400),),
                 ],
               )),
                PopupMenuItem(

                   child: InkWell(
                       onTap: () {
                         showDialog<void>(
                           context: context,
                           barrierDismissible: false, // user must tap button!
                           builder: (BuildContext context) {
                             return const CustomAlertBox();
                           },
                         );
                       },
                     child: Row(
                     children: [
                     Icon(Icons.delete,size: 20,color: Color(0xffD7263D),),
                     SizedBox(width: 8,),
                     Text("Delete Car",style: TextStyle(color: Color(0xffD7263D),fontSize: 14,fontWeight: FontWeight.w400),),
                 ],
               ),
                   )),

              ]

          ),
            // Icon(Icons.more_vert_outlined,color: Colors.black,)
        ],
      ),

    );
  }
}
