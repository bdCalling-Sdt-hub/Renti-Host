import 'package:flutter/material.dart';

class CommentSection extends StatefulWidget {
  const CommentSection({super.key});

  @override
  State<CommentSection> createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(3, (index){
        return   Container(
          margin: EdgeInsetsDirectional.only(bottom: 8),
          padding: EdgeInsetsDirectional.symmetric(vertical: 16),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xffE6E7F4),
            // border: Border.all(color: Color(0xff000B90))
          ),
          child: const Center(
            child: Text("Nice Behavior.",
                style: TextStyle(
                    color: Color(0xff000B90),
                    fontSize: 14,
                    fontWeight: FontWeight.w400)),
          ),
        );
      })
    );
  }
}
