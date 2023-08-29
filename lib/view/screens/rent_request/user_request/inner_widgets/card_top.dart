
import 'package:flutter/material.dart';

class CardTop extends StatelessWidget {
  const CardTop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage("assets/images/Avater.png"),width: 50,height:50 ,),
        SizedBox(width: 16,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text("John Doe",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 18,fontWeight: FontWeight.w500),),
            SizedBox(height: 8,),
            Row(
              children: [
                Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                SizedBox(width: 4,),
                Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                SizedBox(width: 4,),
                Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                SizedBox(width: 4,),
                Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                SizedBox(width: 2,),
                Text("(4.5)"),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.calendar_month,size: 14,color: Color(0xff737373),),
                SizedBox(width: 6,),
                Text("06 aug 2023-07 aug 2023",style: TextStyle(color: Color(0xff737373),fontSize: 14,fontWeight:FontWeight.w400 ),),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
