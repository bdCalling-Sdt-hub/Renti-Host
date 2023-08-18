import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomHomeApproval extends StatelessWidget {
  const CustomHomeApproval({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Image(image: AssetImage("assets/images/bro.png"),height: 220,width: 350,),
        const SizedBox(height: 142),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error_outline_outlined,size: 16,color: Color(0xff000B90),),
                SizedBox(width: 18,),
                Text("Please wait for admin’s approval.",style: TextStyle(color: Color(0xff000B90),fontSize: 14,fontWeight: FontWeight.w400,),)
              ],

            ),
          ),
          decoration: BoxDecoration(
              color: Color(0xffE6E7F4),
              borderRadius: BorderRadius.circular(8)
          ),
        )
      ],
    );
  }
}
