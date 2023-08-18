import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTopSection extends StatelessWidget {
  const HomeTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1, color: const Color(0xffE6E7F4)),
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xff000000).withOpacity(0.225),
                      blurRadius: 8,
                      offset: const Offset(0, 1))
                ]),
            width: 106,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 7),
                    child: Text(
                      "Total Car",
                      style: GoogleFonts.poppins(
                          color: const Color(0xff000000),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 11.0),
                    child: Text(
                      "00",
                      style: TextStyle(
                          color: Color(0xff000B90),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1, color: const Color(0xffE6E7F4)),
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xff000000).withOpacity(0.225),
                      blurRadius: 8,
                      offset: const Offset(0, 1))
                ]),
            width: 106,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 7),
                    child: Text(
                      "Active",
                      style: GoogleFonts.poppins(
                          color: const Color(0xff000000),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 11.0),
                    child: Text(
                      "00",
                      style: TextStyle(
                          color: Color(0xff00A991),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1, color: const Color(0xffE6E7F4)),
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xff000000).withOpacity(0.225),
                      blurRadius: 8,
                      offset: const Offset(0, 1))
                ]),
            width: 106,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 7),
                    child: Text(
                      "Reserved",
                      style: GoogleFonts.poppins(
                          color: const Color(0xff000000),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 11.0),
                    child: Text(
                      "00",
                      style: TextStyle(
                          color: Color(0xffD7263D),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
