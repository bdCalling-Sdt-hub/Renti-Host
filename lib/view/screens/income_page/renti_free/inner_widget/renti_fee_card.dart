import 'package:flutter/material.dart';

class RentiFeeCard extends StatelessWidget {
  const RentiFeeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: const EdgeInsets.only(left: 8,right:16,top: 8,bottom: 8),
    decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.50, color: Color(0xFFE6E7F4)),
        borderRadius: BorderRadius.circular(8),
      ),
      shadows: const [
        BoxShadow(
          color: Color(0x19000000),
          blurRadius: 10,
          offset: Offset(0, 1),
          spreadRadius: 0,
        )
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 86,
          height: 88,
          decoration: ShapeDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/images/Carphoto.png"),
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
        ),
        const SizedBox(width: 8,),
        const Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Toyota Harrier',
                    style: TextStyle(
                      color: Color(0xFF000B90),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 1.40,
                    ),
                  ),
                  Text(
                    '\$ 50',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF000B90),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 1.40,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Transition ID: ',
                      style: TextStyle(
                        color: Color(0xFF999999),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                    TextSpan(
                      text: '1223435566',
                      style: TextStyle(
                        color: Color(0xFF2E2C2C),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.40,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Trip no: ',
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.40,
                          ),
                        ),
                        TextSpan(
                          text: ("07"),
                          style: TextStyle(
                            color: Color(0xFF2E2C2C),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down_sharp)
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
