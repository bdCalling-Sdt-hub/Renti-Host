import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/splash/splash_screen.dart';

class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({super.key});

  @override
  State<SelectLanguageScreen> createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
   List<String> languageName=['English','English UK','Hindi','Spanish','Japanese','Chinese','Dutch','Korean','Swedish','Bangla'];
   int selectedItem=0;
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
        backgroundColor:Color(0xFFFCFCFC).withOpacity(.9),
        body:  Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 24,bottom: 24),
          child: LayoutBuilder(
              builder:(BuildContext context, BoxConstraints constraints)=>SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height:620 ,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: languageName.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: (){
                                setState(() {
                                  selectedItem = index;
                                });
                              },
                              child: Card(
                                color: Color(0xFFFFFFFF),
                                elevation: 2,

                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 16),
                                  child: Row(

                                    children: [

                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration:  BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          border:  Border.all(color: Colors.grey,width: 1),
                                          color: index == selectedItem ? Color(0xFF000B90):Color(0xFFFFFFFF),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                        languageName[index],
                                        style: TextStyle(color:Color(0xFF2E2C2C), fontSize: 14,fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),

                              ),
                            );
                          }),
                    ),
                    SizedBox(height: 34,),
                    SizedBox(
                      height: 57,
                      width: 350,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (_) => SplashScreen()));
                          },
                          child: Text(
                            'Confirm',
                            style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 18,fontWeight: FontWeight.w600),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                            ),
                            backgroundColor: Color(0xFF000B90),
                          )),
                    ),
                  ],
                ),
              )
          ),
        ),
      ),
    );
  }
}
