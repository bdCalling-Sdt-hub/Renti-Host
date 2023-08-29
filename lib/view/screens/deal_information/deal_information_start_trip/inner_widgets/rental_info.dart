import 'package:flutter/cupertino.dart';

class RentalInfostart extends StatelessWidget {
  const RentalInfostart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Rental Information",
            style: TextStyle(
                color: Color(0xff2E2C2C),
                fontSize: 16,
                fontWeight: FontWeight.w500)),
        SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Car model:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
            SizedBox(),
            Text("Toyota Corolla",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Car year:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
            SizedBox(),
            Text("2015",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Car color:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
            SizedBox(),
            Text("Blue",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Car license no:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
            SizedBox(),
            Text("61-10-TMD",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Gear type:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
            SizedBox(),
            Text('Manual',style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Rental time:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
            SizedBox(),
            Text("12pm - 12am",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Rental date:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
            SizedBox(),
            Text('08 aug 2023 - 09 aug 2024',style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
          ],
        ),
      ],
    );
  }
}
