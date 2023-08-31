import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Cars List",style: TextStyle(color: Color(0xff2E2C2C),fontSize:14 ,fontWeight:FontWeight.w600 ),),
          Text("See All",style: TextStyle(color: Color(0xff000B90),fontSize:14 ,fontWeight:FontWeight.w400 ),),
        ],
      ),
    );
  }
}
