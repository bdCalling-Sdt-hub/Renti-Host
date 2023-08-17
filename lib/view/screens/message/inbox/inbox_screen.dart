import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff000B90),
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 64,
          elevation: 0,
          titleSpacing: -8,
          backgroundColor: Color(0xff000B90),
          leading: const Icon(Icons.arrow_back_ios_new),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/Avatermohila.png",
                height: 52,
                width: 52,
              ),
              const SizedBox(
                width: 12,
              ),
              const Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bessie Cooper',
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 11,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.do_not_disturb_on_total_silence_rounded,
                          color: Colors.green,
                          weight: 5,
                          size: 10,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Active Now",
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.call,
                color: Color(0xfffffffff),
                size: 24,
              ),
            )
          ],
        ),
        body: Container(
          width: 390,
          height: 736,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 10,
                offset: Offset(0, -4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(vertical: 20,horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 103),
                  child: Container(
                      width: 266,
                      height: 56,
                      padding: const EdgeInsets.all(8),
                      decoration: ShapeDecoration(
                        color: Color(0xFF000B90),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8,right: 8),
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur. Fringilla vitae dolor.',
                           maxLines: 2,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.40,
                          ),
                        ),
                      ),
                    ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: 311,
                  height: 85,
                  padding: const EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    color: Color(0xFFE6E6E6),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  child: Center(
                    child: Text(
                      'Lorem ipsum dolor sit amet\nconsectetur. Enim posuere aenean enim malesuada diam donec augue facilisi.',
                      maxLines: 3,
                      style: TextStyle(
                        color: Color(0xFF2E2C2C),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: 85,
                  height: 36,
                  padding: const EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    color: Color(0xFFE6E6E6),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(
                          color: Color(0xFF2E2C2C),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.40,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
