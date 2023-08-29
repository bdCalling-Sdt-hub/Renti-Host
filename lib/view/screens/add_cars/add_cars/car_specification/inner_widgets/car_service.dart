import 'package:flutter/material.dart';

class CarService extends StatefulWidget {
  const CarService({super.key});

  @override
  State<CarService> createState() => _CarServiceState();
}

class _CarServiceState extends State<CarService> {
  List< String> seatList = ["Baby Car Seat", " Sunroof", ' Bluetooth','GPS'];
  int selectedItem = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate( seatList.length,(index){
      return GestureDetector(
        onTap: (){
          setState(() {
            selectedItem = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 20),
          child: Row(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:  index == selectedItem ? const Color(0xff000B90) : const Color(0xffffffff),
                    border: Border.all(color: const Color(0xffcccccc),width: 1),
                    boxShadow: [
                      BoxShadow(
                          color : const Color(0xff000000).withOpacity(0.4),
                          offset: const Offset(0, 0),
                          blurRadius: 2
                      )
                    ]
                ),
              ),
              const SizedBox(width: 10,),
              Text(seatList[index],style: const TextStyle(color: Color(0xff2E2C2C),fontSize:14, fontWeight:FontWeight.w400 ),)
            ],
          ),
        ),
      );
    }
    ),
    );
  }
}
