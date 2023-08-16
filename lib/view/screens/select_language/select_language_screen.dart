import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/splash/splash_screen.dart';

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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        backgroundColor: Color(0xFFFCFCFC).withOpacity(.9),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 24, bottom: 24),
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) =>
                  SingleChildScrollView(
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
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Container(
                                height: 52,
                                width: MediaQuery.of(context).size.width,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 0.50, color: Color(0xFFE6E7F4)),
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
                        const SizedBox(
                          height: 34,
                        ),
                        SizedBox(
                          height: 57,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const SplashScreen()));
                              },
                              child: Text(
                                'Confirm',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                backgroundColor: Color(0xFF000B90),
                              )),
                        ),
                      ],
                    ),
                  )),
        ),
      ),
    );
  }
}
