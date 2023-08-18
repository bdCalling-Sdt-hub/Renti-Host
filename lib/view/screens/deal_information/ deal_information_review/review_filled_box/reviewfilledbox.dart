import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../message/messages/messages_screen.dart';
import '../review_screen.dart';

class FilledBox extends StatefulWidget {
  const FilledBox({super.key});

  @override
  State<FilledBox> createState() => _FilledBoxState();
}

class _FilledBoxState extends State<FilledBox> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          title: const Text('Car Deal Information',
              style: TextStyle(
                  color: Color(0xff2E2C2C),
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
          backgroundColor: const Color(0xffffffff),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Review()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
            color: Colors.black,
          )),
      body: LayoutBuilder(builder: (context,constraint){
          return SingleChildScrollView(
           child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 20),
              child: Center(
                child: Column(
                  children: [
                    const Text("Give us rating out of 5",
                        style: TextStyle(
                            color: Color(0xff2E2C2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 16,),
                    RatingBarIndicator(
                      rating: 2.75,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 50.0,
                      direction: Axis.horizontal,
                    ),
                    const SizedBox(height:16,),
                    Container(
                      height: 56,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffE6E7F4),
                        // border: Border.all(color: Color(0xff000B90))
                      ),
                      child: const Center(
                        child: Text("Nice Behavior",
                            style: TextStyle(
                                color: Color(0xff000B90),
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Container(
                      height: 56,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffE6E7F4),
                        // border: Border.all(color: Color(0xff000B90))
                      ),
                      child: const Center(
                        child: Text("Nice Behavior",
                            style: TextStyle(
                                color: Color(0xff000B90),
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Container(
                      height: 56,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffE6E7F4),
                        // border: Border.all(color: Color(0xff000B90))
                      ),
                      child: const Center(
                        child: Text("Nice Behavior",
                            style: TextStyle(
                                color: Color(0xff000B90),
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    const SizedBox(height: 16,),
                    SizedBox(
                      height: 100,
                      child: TextFormField(
                        style: TextStyle(color: Color(0xFF2E2C2C)),
                        maxLines: 4,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFFFFFFF),
                          hintText: 'Type card number here...',
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
                              borderSide:
                              BorderSide(color: Color(0xFFCCCCCC))),
                        ),

                      ),
                    ),
                    const SizedBox(height: 182,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>MessageScreen()));
                      },
                      child: Container(
                        height: 57,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color(0xff000B90),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Text("Send Review",
                              style: TextStyle(
                                  color: Color(0xffFFFFFFC),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        })
    ));
  }
}
