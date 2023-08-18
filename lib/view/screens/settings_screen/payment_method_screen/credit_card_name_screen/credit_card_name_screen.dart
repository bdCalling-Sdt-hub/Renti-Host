import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/settings_screen/payment_method_screen/payment_method_screen.dart';

class CreditCardNameScreen extends StatefulWidget {
  const CreditCardNameScreen({super.key});

  @override
  State<CreditCardNameScreen> createState() => _CreditCardNameScreenState();
}

class _CreditCardNameScreenState extends State<CreditCardNameScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        titleSpacing: -8,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const Payment_Method_Screen()));
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 14,
          ),
          color: const Color(0xff2E2C2C),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Text(
          'Add Credit Card',
          style: TextStyle(
              color: Color(0xFF2E2C2C),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ),
      body:  LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 24, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Credit Card Number',
                    style: TextStyle(
                        color: Color(0xFF2E2C2C),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    style:const TextStyle(color: Color(0xFF2E2C2C)),
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    decoration:const InputDecoration(
                      fillColor: Color(0xFFFFFFFF),
                      hintText: 'Type card number here...',
                      hintStyle: TextStyle(
                          letterSpacing: 1,
                          color: Color(0xFFCCCCCC)),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide()),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFCCCCCC),
                          )),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFCCCCCC),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFCCCCCC))),
                    ),

                  ),
                  const SizedBox(height: 16,),
                  const Text(
                    'Expire Date',
                    style: TextStyle(
                        color: Color(0xFF2E2C2C),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    style:const TextStyle(color: Color(0xFF2E2C2C)),
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    decoration:const InputDecoration(
                      fillColor: Color(0xFFFFFFFF),
                      hintText: 'MM-YY',
                      hintStyle: TextStyle(
                          letterSpacing: 1,
                          color: Color(0xFFCCCCCC)),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide()),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFCCCCCC),
                          )),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFCCCCCC),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFCCCCCC))),
                    ),

                  ),
                  const SizedBox(height: 16,),
                  const Text(
                    'CVV',
                    style: TextStyle(
                        color: Color(0xFF2E2C2C),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    style:const TextStyle(color: Color(0xFF2E2C2C)),
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    decoration:const InputDecoration(
                      fillColor: Color(0xFFFFFFFF),
                      hintText: 'Type CVV here...',
                      hintStyle: TextStyle(
                          letterSpacing: 1,
                          color: Color(0xFFCCCCCC)),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide()),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFCCCCCC),
                          )),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFCCCCCC),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFCCCCCC))),
                    ),

                  ),
                ],
              ),
            ),

          )
      ),
    ));
  }
}
