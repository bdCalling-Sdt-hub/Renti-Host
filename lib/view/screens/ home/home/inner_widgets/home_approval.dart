import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeApproval extends StatelessWidget {
  const HomeApproval({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(height: 115,),
        const Image(image: AssetImage("assets/images/bro.png"),height: 220,width: 350,),
        const SizedBox(height: 142),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: const Color(0xffE6E7F4),
              borderRadius: BorderRadius.circular(8)
          ),
          child:  Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: InkWell(
              onTap: (){

              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error_outline_outlined,size: 20,color: Color(0xff000B90),),
                  SizedBox(width: 16,),
                  Text("Please wait for admin’s approval.",style: TextStyle(color: Color(0xff000B90),fontSize: 14,fontWeight: FontWeight.w400,),)
                ],

              ),
            ),
          ),
        )
      ],
    );
  }
}
