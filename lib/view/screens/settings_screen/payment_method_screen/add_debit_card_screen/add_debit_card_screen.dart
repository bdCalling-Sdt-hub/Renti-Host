import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/settings_screen/payment_method_screen/payment_method_screen.dart';

class AddDebitCardScreen extends StatefulWidget {
  const AddDebitCardScreen({super.key});

  @override
  State<AddDebitCardScreen> createState() => _AddDebitCardScreenState();
}

class _AddDebitCardScreenState extends State<AddDebitCardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        titleSpacing: -8,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const Payment_Method_Screen()));
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
          'Add Debit Card',
          style: TextStyle(
              color: Color(0xFF2E2C2C),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 24, top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Account Holder Name',
                        style: TextStyle(
                            color: Color(0xFF2E2C2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Color(0xFF2E2C2C)),
                        maxLines: 1,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          fillColor: Color(0xFFFFFFFF),
                          hintText: 'Type here...',
                          hintStyle: TextStyle(
                              letterSpacing: 1, color: Color(0xFFCCCCCC)),
                          filled: true,
                          border:
                              OutlineInputBorder(borderSide: BorderSide()),
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
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Phone Number',
                        style: TextStyle(
                            color: Color(0xFF2E2C2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                              child: Container(
                                height: 60,
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 14),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(color: Color(0xFFCCCCCC))),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child:
                                      Image.asset('assets/logos/flag.png'),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                const Text(
                                  '+52',
                                  style: TextStyle(
                                      color: Color(0xFFCCCCCC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              style: TextStyle(color: Color(0xFF2E2C2C)),
                              maxLines: 1,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                fillColor: Color(0xFFFFFFFF),
                                hintText: 'Type mobile number...',
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
                                    borderSide: BorderSide(
                                        color: Color(0xFFCCCCCC))),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Email',
                        style: TextStyle(
                            color: Color(0xFF2E2C2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        style: TextStyle(color: Color(0xFF2E2C2C)),
                        maxLines: 1,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          fillColor: Color(0xFFFFFFFF),
                          hintText: 'type here...',
                          hintStyle: TextStyle(
                              letterSpacing: 1, color: Color(0xFFCCCCCC)),
                          filled: true,
                          border:
                              OutlineInputBorder(borderSide: BorderSide()),
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'this field can not be empty';
                          } else if (!value.contains(RegExp('\@'))) {
                            return 'Please enter a valid email';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Bank Account Number',
                        style: TextStyle(
                            color: Color(0xFF2E2C2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                       const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Color(0xFF2E2C2C)),
                        maxLines: 1,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          fillColor: Color(0xFFFFFFFF),
                          hintText: 'Type here...',
                          hintStyle: TextStyle(
                              letterSpacing: 1, color: Color(0xFFCCCCCC)),
                          filled: true,
                          border:
                              OutlineInputBorder(borderSide: BorderSide()),
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
                      const SizedBox(
                        height: 44,
                      ),
                      SizedBox(
                        height: 57,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Save',
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              backgroundColor: Color(0xFF000B90),
                            )),
                      ),

                    ],
                  ),
                ),
              )),
    ));
  }
}
