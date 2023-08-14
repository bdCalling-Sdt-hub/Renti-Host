import 'package:flutter/material.dart';

import '../review_screen.dart';

class FilledBox extends StatefulWidget {
  const FilledBox({super.key});

  @override
  State<FilledBox> createState() => _FilledBoxState();
}

class _FilledBoxState extends State<FilledBox> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          appBar: AppBar(
              centerTitle: false,
              elevation: 0,
              title: Text('Car Deal Information',
                  style: TextStyle(
                      color: Color(0xff2E2C2C),
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
              backgroundColor: Color(0xffffffff),
              leading: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Review ()));
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                ),
                color: Colors.black,
              )),
          body: Center(
            child: Column(
              children: [
                Text("Give us rating out of 5",
                    style: TextStyle(
                        color: Color(0xff2E2C2C),
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),

    ));
  }
}
