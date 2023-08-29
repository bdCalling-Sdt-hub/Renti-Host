import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/splash/splash_screen.dart';
import 'package:renti_host/view/widgets/button/custom_button.dart';

class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({super.key});

  @override
  State<SelectLanguageScreen> createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
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

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
          titleSpacing: -8,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SplashScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 14,
            ),
            color: const Color(0xFfFFFFFF),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF000B90),
          title: const Text(
            'Select Language',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        backgroundColor: Color(0xff000b90),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration:  const BoxDecoration(
              color: Color(0xFFFBFBFB),
              // color: Color(0xFFFBFBFB),
              borderRadius: BorderRadius.only(bottomLeft: Radius.zero,bottomRight: Radius.zero,topLeft: Radius.circular(8),topRight: Radius.circular(8))
          ),
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) =>
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 24, bottom: 24),
                    child: Column(
                        children: List.generate(languageName.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedItem = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Container(
                            height: 52,
                            width: MediaQuery.of(context).size.width,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 0.50, color: Color(0xFFE6E7F4)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  blurRadius: 10,
                                  offset: Offset(0, 1),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, top: 16, bottom: 16),
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
                                    width: 10,
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
                        ),
                      );
                    })),
                  )),
        ),
        bottomNavigationBar: CustomButton(
          onTap: (){

          },
          buttonColor: Color(0xff000b90),
          buttonName:  "Confirm",
        )
      ),
    );
  }
}
