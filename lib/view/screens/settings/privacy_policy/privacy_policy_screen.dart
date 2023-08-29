import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/settings/settings/settings_screen.dart';


class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        titleSpacing: -8,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const SettingsScreen()));
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
          'Privacy Policy',
          style: TextStyle(
              color: Color(0xFF2E2C2C),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>const SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.only(
                  left: 20, right: 20, bottom: 24, top: 24),
              child: Column(
                children: [
                  Text('Lorem ipsum dolor sit amet consectetur. Purus egestas elit adipiscing adipiscing. Urna quis velit pretium ipsum eleifend. Dui est tortor pharetra lectus ipsum. Odio risus ac tempus ultricies natoque ac nunc non faucibus. Id nisi diam tempor odio elit elit ultricies arcu.',
                  maxLines: 6,
                    style:TextStyle(color: Color(0xff595959),fontSize: 14,fontWeight: FontWeight.w400,height: 1.40,) ,
                  ),
                  SizedBox(height: 16,),
                  Text('Lorem ipsum dolor sit amet consectetur. Purus egestas elit adipiscing adipiscing. Urna quis velit pretium ipsum eleifend. Dui est tortor pharetra lectus ipsum. Odio risus ac tempus ultricies natoque ac nunc non faucibus. Id nisi diam tempor odio elit elit ultricies arcu.',
                    maxLines: 6,
                    style:TextStyle(color: Color(0xff595959),fontSize: 14,fontWeight: FontWeight.w400,height: 1.40,) ,
                  ),
                  SizedBox(height: 16,),
                  Text('Lorem ipsum dolor sit amet consectetur. Purus egestas elit adipiscing adipiscing. Urna quis velit pretium ipsum eleifend. Dui est tortor pharetra lectus ipsum. Odio risus ac tempus ultricies natoque ac nunc non faucibus. Id nisi diam tempor odio elit elit ultricies arcu.',
                    maxLines: 6,
                    style:TextStyle(color: Color(0xff595959),fontSize: 14,fontWeight: FontWeight.w400,height: 1.40,) ,
                  ),
                ],
              )
            ),

          )
      ),
    ));
  }
}
