import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAddCar extends StatelessWidget {
  const CustomAddCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage("assets/images/bro.png"),height: 220,width: 350,),

        SizedBox(height: 49,),

        TextButton(onPressed: (){}, child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Icon(Icons.add_circle_outline_sharp,size: 24,color: Color(0xff000B90),),

            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text("Add New Car",style: TextStyle(color: Color(0xff000B90),fontWeight: FontWeight.w600,fontSize: 18),),
            )
          ],
        ),

        ),

      ],
    );
  }
}
