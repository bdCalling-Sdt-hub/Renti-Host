import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../upload_car_screen.dart';

class CustomUploadCar extends StatelessWidget {
  const CustomUploadCar({
    super.key,
   this.onTap});

  final VoidCallback ? onTap ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        DottedBorder(
          padding: EdgeInsets.all(0),
          borderType: BorderType.RRect,
          radius: const Radius.circular(8),
          color: const Color(0XFFB0B3DD),
          strokeWidth: 1,
          dashPattern:  const [10, 10,],
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
                      Icons.cloud_upload_outlined,
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
                              "Upload",
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
          height: 16,),
        const Text("1.Upload car licence",style: TextStyle(color: Color(0xff737373),fontSize: 14,fontWeight: FontWeight.w400),),
        const SizedBox(height: 4,),
        const Text("2.Upload car insurance",style: TextStyle(color: Color(0xff737373),fontSize: 14,fontWeight: FontWeight.w400),),
        const SizedBox(height: 4,),
        const Text("3.Upload car papers",style: TextStyle(color: Color(0xff737373),fontSize: 14,fontWeight: FontWeight.w400),),
        const SizedBox(height: 4,),
        const Text("4.Upload car invoice",style: TextStyle(color: Color(0xff737373),fontSize: 14,fontWeight: FontWeight.w400),),
        const SizedBox(height: 4,),
        const Text("5.Upload REPUVE(not theft report)",style: TextStyle(color: Color(0xff737373),fontSize: 14,fontWeight: FontWeight.w400),),
        const SizedBox(height: 24,),

       // custom button
        GestureDetector(
          onTap: onTap,
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
                    "Continue",
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
            ),

          ),
        ),
      ],
    );
  }
}
