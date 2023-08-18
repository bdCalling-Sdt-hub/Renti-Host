import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/add_cars/add_cars/add_cars_screen.dart';

class HomeAddCar extends StatelessWidget {
  const HomeAddCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Image(image: AssetImage("assets/images/bro.png"),height: 220,width: 350,),

        const SizedBox(height: 49,),

        TextButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (_)=>const AddCarsScreen()));
        }, child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(Icons.add_circle_outline_sharp,size: 24,color: Color(0xff000B90),),

            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text("Add New Car",style: TextStyle(color: Color(0xff000B90),fontWeight: FontWeight.w600,fontSize: 18),),
            )
          ],
        ),

        ),

      ],
    );
  }
}
