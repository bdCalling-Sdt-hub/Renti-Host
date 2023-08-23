import 'package:flutter/material.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Car details",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
        Container(
          margin: const EdgeInsetsDirectional.symmetric(vertical: 16),
          padding: const EdgeInsetsDirectional.all(16),
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffE6E7F4),width: 1),
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(8),
              boxShadow:  [
                BoxShadow(
                    color: const Color(0xff000000).withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset(0, 1)
                )
              ]
          ),
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Toyota Harrier",style: TextStyle(color: Color(0xff00086C),fontSize: 18,fontWeight:FontWeight.w500)),
                  const SizedBox(height: 8,),
                  const Text("License no: 55-43-TBV ",style: TextStyle(color: Color(0xff737373),fontSize: 14,fontWeight:FontWeight.w500)),
                  const SizedBox(height:8 ,),
                  Row(
                    children: [
                      Image.asset('assets/images/fuel.png',width: 16,height: 16,),
                      const SizedBox(width: 8,),
                      const Text("10 km/L",style: TextStyle(color: Color(0xff737373),fontSize: 14,fontWeight:FontWeight.w400)),
                    ],
                  ),
                  const SizedBox(height: 8,),
                  const Text("\$${"25/hr"}"),
                ],
              ),
              Image.asset('assets/images/car.png',width: 140,height: 68,),
            ],
          ),
        ),
      ],
    );
  }
}
