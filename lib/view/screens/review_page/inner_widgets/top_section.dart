import 'package:flutter/material.dart';

class ReviewTopSection extends StatelessWidget {
  const ReviewTopSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Expanded(
          flex: 3,
          child:   Row(
        children: [
          Container(
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/Avater.png"))
              )
          ),
          const SizedBox(width: 8),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                style: TextStyle(
                  color: Color(0xFF2E2C2C),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                  SizedBox(width: 4,),
                  Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                  SizedBox(width: 4,),
                  Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                  SizedBox(width: 4,),
                  Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                  SizedBox(width: 4,),
                  Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                ],
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Car license: ',
                      style: TextStyle(
                        color: Color(0xFF999999),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'NBG1234567',
                      style: TextStyle(
                        color: Color(0xFF2E2C2C),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Date: ',
                      style: TextStyle(
                        color: Color(0xFF999999),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: '10 aug 2023',
                      style: TextStyle(
                        color: Color(0xFF2E2C2C),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )
      ),
        Container(
          width: 70,
          height: 70,
          decoration: ShapeDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/images/Carphoto.png"),
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        )
      ],
    );
  }
}
