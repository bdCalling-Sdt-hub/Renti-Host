import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
class TopUploadSection extends StatefulWidget {
  const TopUploadSection({super.key});

  @override
  State<TopUploadSection> createState() => _TopUploadSectionState();
}

class _TopUploadSectionState extends State<TopUploadSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Upload car photo",
            style: TextStyle(
                color: Color(0xff2E2C2C),
                fontSize: 16,
                fontWeight: FontWeight.w500)),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: DottedBorder(
                  padding: const EdgeInsets.all(0),
                  dashPattern: const [
                    8,
                    8,
                  ],
                  color: const Color(0xffB0B3DD),
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(12),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffE6E7F4),
                    ),
                    child: Center(
                        child: Image.asset(
                          "assets/images/bi_image.png",
                          width: 40,
                          height: 35,
                        )
                    ),
                  )
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  DottedBorder(
                      padding: const EdgeInsets.all(0),
                      dashPattern: const [
                        8,
                        8,
                      ],
                      color: const Color(0xffB0B3DD),
                      strokeWidth: 1,
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(12),
                      child: Container(
                        height: 71,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffE6E7F4),
                        ),
                        child: Center(
                            child: Image.asset(
                              "assets/images/bi_image.png",
                              width: 40,
                              height: 35,
                            )),
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  DottedBorder(
                      padding: const EdgeInsets.all(0),
                      dashPattern: const [
                        8,
                        8,
                      ],
                      color: const Color(0xffB0B3DD),
                      strokeWidth: 1,
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(12),

                      child: Container(
                        height: 71,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffE6E7F4),
                        ),
                        child: Center(
                            child: Image.asset(
                              "assets/images/bi_image.png",
                              width: 40,
                              height: 35,
                            )),
                      )
                  ),


                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
