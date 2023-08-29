import 'package:flutter/material.dart';

class UserDetailsTopSection extends StatelessWidget {
  const UserDetailsTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        const Expanded(
          flex: 1,
          child: Row(
            children: [
              Image(image: AssetImage("assets/images/avater1.png"),width: 64,height:64 ,),
              SizedBox(width: 16,),
              Column(
                children: [
                  Text("John Doe",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 24,fontWeight: FontWeight.w500),),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                      SizedBox(width: 8,),
                      Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                      SizedBox(width: 8,),
                      Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                      SizedBox(width: 8,),
                      Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                      SizedBox(width: 8,),
                      Text("(4.5)"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
              Row(
                children: [
                  InkWell(
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: const Color(0xffE6E7F4),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child:  const Icon(Icons.call,size: 18,),
                    ),
                  ),
                  const SizedBox(width: 16),
                  InkWell(
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: const Color(0xffE6E7F4),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(Icons.message,size: 18,),
                    ),
                  ),
                ],
              )
      ],
    );
  }
}
