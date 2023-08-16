import 'package:flutter/material.dart';

import '../income/income_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          automaticallyImplyLeading: true,
          titleSpacing: -8,
          title: const Text(
            'My Payment',
            style: TextStyle(
              color: Color(0xFF2E2C2C),
              fontSize: 18,

              fontWeight: FontWeight.w600,
              height: 1.40,
            ),
          ),
          backgroundColor: const Color(0xffffffff),
          leading: IconButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (_)=>IncomeScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              weight: 18,
              size: 18,
            ),
            color: Colors.black,
          )),
      body:LayoutBuilder(builder: (context,constraint){
        return  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(vertical: 24,horizontal:20 ),
            child: Column(
                children: List.generate(20, (index){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Container(
                        width: 350,
                        height: 154,
                        padding:  const EdgeInsetsDirectional.symmetric(horizontal:16 ,vertical: 16),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:  BorderSide(width: 0.50, color: Color(0xFFE6E7F4)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          shadows:  const [
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
                              height:MediaQuery.of(context).size.height,
                              decoration: ShapeDecoration(
                                image:  const DecorationImage(
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
                                  SizedBox(height: 14),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Car license no. :',
                                          style: TextStyle(
                                            color: Color(0xFF999999),
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 1.40,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' ',
                                          style: TextStyle(
                                            color: Color(0xFF2E2C2C),
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 1.40,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '61-10-TMD',
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
                                  SizedBox(height: 14),
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
                                  SizedBox(height: 14),
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
                        )),
                  );
                })
            ),
          ),
        );
      }),
    );
  }
}
