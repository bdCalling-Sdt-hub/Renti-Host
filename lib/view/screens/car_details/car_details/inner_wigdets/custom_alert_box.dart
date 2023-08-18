import 'package:flutter/material.dart';

class CustomAlertBox2 extends StatefulWidget {
  const CustomAlertBox2({super.key});

  @override
  State<CustomAlertBox2> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomAlertBox2> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: SizedBox(
        width: 350,
        child: Column(
          children: [
            const Text(
              "You sure want to Delete Car",
              style: TextStyle(
                  color: Color(0xff2E2C2C),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 24.0, horizontal: 0),
              child: Divider(
                height: 1,
                color: Color(0xff999999),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child:InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0x7FFBE9EC),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 11.5),
                            child: Text(
                              "Yes",style: TextStyle(color: Color(0xffD7263D),fontSize: 18,fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          )
                      ),
                    )
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(

                          decoration: BoxDecoration(
                              color: const Color(0xff000B90),
                              borderRadius:
                              BorderRadius.circular(8)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 11.5),
                            child: Text(
                              "No",
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18,
                                  fontWeight:
                                  FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
