import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({super.key});
  @override
  State<DialogBox> createState() => _DialogBoxState();
}
class _DialogBoxState extends State<DialogBox> {
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,

      title: Container(

        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                children: [
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: Icon(Icons.cancel_outlined,color: Color(0xffD7263D) ,size: 18,)),
                  Column(
                    children: [
                      const Text("Set notification sound",style: TextStyle(
                        color: Color(0xFF2E2C2C),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,

                      ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 20),
                        child: Divider(
                          color: Color(0xffE0DFDF) ,height: 1,
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: SfSlider(
                          min: 0.toInt(),
                          max: 100.toInt(),
                          value: _value,
                          thumbIcon: Text(
                            textAlign : TextAlign.center,
                            _value.toString(),style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),),
                          showDividers: true,
                          activeColor: const Color(0xff000b90),
                          inactiveColor: const Color(0xffCCCCCC),

                          // interval: 20,
                          // showTicks: true,
                          minorTicksPerInterval: 2.toInt(),
                          onChanged: (value){
                            setState(() {
                              _value = value;
                            });
                          },
                        ),

                      ),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
