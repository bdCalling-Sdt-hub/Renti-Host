import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/review_page/inner_widgets/top_section.dart';

class AllReviewScreen extends StatefulWidget {
  const AllReviewScreen({super.key});

  @override
  State<AllReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<AllReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffffffff),
      appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          automaticallyImplyLeading : true,
          titleSpacing: -8,
          title: const Text('All reviews',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600)),
          backgroundColor:const Color(0xffffffff),
          leading: IconButton(onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (_)=>UserRequestScreen()));
          }, icon:const Icon(Icons.arrow_back_ios,size: 18,),color: Color(0xff2E2C2C),)
      ),
      body: LayoutBuilder(
        builder: (context,constraint){
          return SingleChildScrollView(
            padding: EdgeInsetsDirectional.symmetric(vertical: 24,horizontal: 20),
              child:Column(
                  children: List.generate(50, (index) =>GestureDetector(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (_)=>UserDetailsScreen()));
                    },
                    child: Container(
                      padding: const EdgeInsetsDirectional.all(16),
                      margin: const EdgeInsetsDirectional.only(bottom: 8),
                      width: MediaQuery.of(context).size.width,

                      decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow:  [
                            BoxShadow(
                                color: const Color(0xff000000).withOpacity(0.1),
                                blurRadius: 10,
                                offset: const Offset(0, 1)
                            )
                          ]
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            ReviewTopSection(),
                            SizedBox(height:8),
                            Text(
                            'Lorem ipsum dolor sit amet consectetur. Congue fames egestas tristique nisl sit nec eu scelerisque nam. Et senectus sed morbi quam.',
                            style: TextStyle(
                              color: Color(0xFF737373),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ) ,)
              )
          );
        },
      ),
    );
  }
}
