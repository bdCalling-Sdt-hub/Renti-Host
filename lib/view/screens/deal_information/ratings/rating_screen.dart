import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:renti_host/view/screens/deal_information/ratings/inner_widgets/comment.dart';
import 'package:renti_host/view/widgets/button/bottom_button.dart';
import '../../message/messages/messages_screen.dart';
import '../ deal_information_review/review_details_screen.dart';
import 'inner_widgets/rating_section.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});
  @override
  State<RatingScreen> createState() => _FilledBoxState();
}
class _FilledBoxState extends State<RatingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
          titleSpacing: -8,
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
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
            color: const Color(0xff2E2C2C),
          )),
      body: LayoutBuilder(builder: (context,constraint){
          return SingleChildScrollView(
           child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 20),
              child: Center(
                child: Column(
                  children: [
                    // rating section
                    const RatingSection(),
                    const SizedBox(height:16,),
                    const CommentSection(),
                    const SizedBox(height: 16,),
                    SizedBox(
                      height: 100,
                       child: TextFormField(
                        style: const TextStyle(color: Color(0xFF2E2C2C)),
                        maxLines: 4,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          fillColor: Color(0xFFFFFFFF),
                          hintText: 'Type review here...',
                          hintStyle: TextStyle(
                              color: Color(0xFFCCCCCC)),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide()),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFCCCCCC),
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Color(0xFFCCCCCC))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
          bottomNavigationBar: BottomButton(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>RatingScreen()));
            }, buttonName: " Send Review", buttonColor: Color(0xff000b90),
            textColor:  Color(0xffffffff),
          ),
    )
    );
  }
}
