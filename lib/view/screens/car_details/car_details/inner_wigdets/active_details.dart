import 'package:flutter/material.dart';

class ActiveDocuments extends StatelessWidget {
  const ActiveDocuments({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Car Model:",style: TextStyle(color: Color(0xff999999) ,fontSize: 16,fontWeight:FontWeight.w400 ,)),
            Text("2014",style: TextStyle(color: Color(0xff2E2C2C) ,fontSize: 16,fontWeight:FontWeight.w500 ,))
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Number of Doors:",style: TextStyle(color: Color(0xff999999) ,fontSize: 16,fontWeight:FontWeight.w400 ,)),
            Text("04",style: TextStyle(color: Color(0xff2E2C2C) ,fontSize: 16,fontWeight:FontWeight.w500 ,))
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Seats:",style: TextStyle(color: Color(0xff999999) ,fontSize: 16,fontWeight:FontWeight.w400 ,)),
            Text("05",style: TextStyle(color: Color(0xff2E2C2C) ,fontSize: 16,fontWeight:FontWeight.w500 ,))
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Car color:",style: TextStyle(color: Color(0xff999999) ,fontSize: 16,fontWeight:FontWeight.w400 ,)),
            Text("Blue",style: TextStyle(color: Color(0xff2E2C2C) ,fontSize: 16,fontWeight:FontWeight.w500 ,))
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Car license no:",style: TextStyle(color: Color(0xff999999) ,fontSize: 16,fontWeight:FontWeight.w400 ,)),
            Text("61-10-TMD",style: TextStyle(color: Color(0xff2E2C2C) ,fontSize: 16,fontWeight:FontWeight.w500 ,))
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Registration date:",style: TextStyle(color: Color(0xff999999) ,fontSize: 16,fontWeight:FontWeight.w400 ,)),
            Text("08 aug 2023",style: TextStyle(color: Color(0xff2E2C2C) ,fontSize: 16,fontWeight:FontWeight.w500 ,))
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Insurance date:",style: TextStyle(color: Color(0xff999999) ,fontSize: 16,fontWeight:FontWeight.w400 ,)),
            Text("08 aug 2023 - 09 aug 2024",style: TextStyle(color: Color(0xff2E2C2C) ,fontSize: 16,fontWeight:FontWeight.w500 ,))
          ],
        ),
        SizedBox(height: 8,)
      ],
    );
  }
}
