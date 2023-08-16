import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/settings_screen/settings_screen/settings_screen.dart';

class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({super.key});

  @override
  State<ChangeLanguageScreen> createState() => _ChaneLanguageScreenState();
}

class _ChaneLanguageScreenState extends State<ChangeLanguageScreen> {
  List<String> languageName = [
    'English',
    'English UK',
    'Hindi',
    'Spanish',
    'Japanese',
    'Chinese',
    'Dutch',
    'Korean',
    'Swedish',
    'Bangla'
  ];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
              'Change Language',
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
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
                      child: Column(
                        children: [
                          Column(
                              children:
                              List.generate(languageName.length, (index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedItem = index;
                                    });
                                  },
                                  child: Container(
                                    height: 52,
                                    width: 180,

                                    child: Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              border: Border.all(
                                                  color:
                                                  Colors.black12.withOpacity(.2),
                                                  width: 1),
                                              color: index == selectedItem
                                                  ? Color(0xFF000B90)
                                                  : Color(0xFFFFFFFF),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            languageName[index],
                                            style: const TextStyle(
                                                color: Color(0xFF2E2C2C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              })),
                          const SizedBox(
                            height: 34,
                          ),

                        ],
                      ),
                    ),
                  )),
    ));
  }
}
