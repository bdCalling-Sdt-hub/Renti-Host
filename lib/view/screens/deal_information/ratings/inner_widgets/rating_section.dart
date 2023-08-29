import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingSection extends StatefulWidget {
  const RatingSection({super.key});

  @override
  State<RatingSection> createState() => _RatingSectionState();
}

class _RatingSectionState extends State<RatingSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Give us rating out of 5",
            style: TextStyle(
                color: Color(0xff2E2C2C),
                fontSize: 16,
                fontWeight: FontWeight.w500)),
        const SizedBox(height: 16,),
        RatingBarIndicator(
          unratedColor: const Color(0xffBFBFBF),
          rating: 4.60,
          itemBuilder: (context, index) => const Icon(Icons.star, color: Color(0xffFBA91D),),
          itemCount: 5,
          itemSize: 40.0,
          direction: Axis.horizontal,
        ),
      ],
    );
  }
}
