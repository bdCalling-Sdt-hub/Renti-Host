import 'package:flutter/material.dart';

class RentiWorksScreen extends StatefulWidget {
  const RentiWorksScreen({super.key});

  @override
  State<RentiWorksScreen> createState() => _RentiWorksScreenState();
}

class _RentiWorksScreenState extends State<RentiWorksScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          titleSpacing: -8,
          leading: IconButton(
            onPressed: () {

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
            'How Renti Works',
            style: TextStyle(
                color: Color(0xFF2E2C2C),
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
        body:  LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>
            const SingleChildScrollView(
              child: Padding(
                  padding:  EdgeInsets.only(
                      left: 20, right: 20, bottom: 24,top: 24),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet consectetur',
                        style: TextStyle(
                            color: Color(0xFF2E2C2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8,),
                      Text('Lorem ipsum dolor sit amet consectetur. Imperdiet iaculis convallis bibendum massa id elementum consectetur neque mauris. In pellentesque adipiscing nec eget platea euismod massa. Cras urna nulla nulla urna faucibus.',
                      style: TextStyle(color: Color(0xff595959),fontSize: 14,fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 16,),
                      Text(
                        'Lorem ipsum dolor sit amet consectetur',
                        style: TextStyle(
                            color: Color(0xFF2E2C2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8,),
                      Text('Lorem ipsum dolor sit amet consectetur. Imperdiet iaculis convallis bibendum massa id elementum consectetur neque mauris. In pellentesque adipiscing nec eget platea euismod massa. Cras urna nulla nulla urna faucibus.',
                        style: TextStyle(color: Color(0xff595959),fontSize: 14,fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 8,),
                      Text('Lorem ipsum dolor sit amet consectetur. Imperdiet iaculis convallis bibendum massa id elementum consectetur neque mauris. In pellentesque adipiscing nec eget platea euismod massa. Cras urna nulla nulla urna faucibus.',
                        style: TextStyle(color: Color(0xff595959),fontSize: 14,fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
              ),
            )),
      ),
    );
  }
}
