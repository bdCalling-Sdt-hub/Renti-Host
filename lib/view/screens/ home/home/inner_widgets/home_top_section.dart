import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTopSection extends StatelessWidget {
   HomeTopSection({super.key});

  List<Map<String,String>> carStatus = [

    {
       "status": "Total Car",
      "statusNo": "20"
    },
    {
      "status": "Active",
      "statusNo": "12"
    },
    {
      "status": "Reserved",
      "statusNo": "08"
    }

    ];

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  List.generate(carStatus.length, (index) =>  Expanded(
        child: Container(
          margin: EdgeInsetsDirectional.symmetric(horizontal: 8),

          decoration: BoxDecoration(
              border: Border.all(
                  width: 1, color: const Color(0xffE6E7F4)),
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff000000).withOpacity(0.225),
                    blurRadius: 8,
                    offset: const Offset(0, 1))
              ]
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 8),
                  child: Text(
                    carStatus[index]["status"]!,
                    style: GoogleFonts.poppins(
                        color: const Color(0xff000000),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Text(
                    carStatus[index]["statusNo"]!,
                    style:  TextStyle(
                        color: carStatus[index]["status"] == "Total Car"?const Color(0xff000B90) : carStatus[index]["status"] == "Active"? const Color(0xff00A991): const Color(0xffD7263D) ,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      )

    );
  }
}
