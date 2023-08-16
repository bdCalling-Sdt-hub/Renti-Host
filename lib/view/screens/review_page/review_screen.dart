import 'package:flutter/material.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          automaticallyImplyLeading : true,
          titleSpacing: -8,
          title: Text('All reviews',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600)),
          backgroundColor:Color(0xffffffff),
          leading: IconButton(onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (_)=>UserRequestScreen()));
          }, icon:Icon(Icons.arrow_back_ios,),color: Colors.black,)
      ),
      body: LayoutBuilder(
        builder: (context,constraint){
          return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:Column(
                  children: List.generate(50, (index) =>Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    child: GestureDetector(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (_)=>UserDetailsScreen()));
                      },
                      child: Container(
                        width: 350,
                        height: 170,
                        child: Card(
                          elevation: 10,
                          color: Colors.white,
                          child: Padding(
                            padding:EdgeInsetsDirectional.symmetric(horizontal: 16,vertical: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image(image: AssetImage("assets/images/Avater.png"),width: 70,height:70 ,),
                                        SizedBox(width: 16,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children:  [
                                            const Text("John Doe",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 18,fontWeight: FontWeight.w500),),

                                            Expanded(
                                              flex: 0,
                                              child: const Row(
                                                children: [
                                                  Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                                  SizedBox(width: 8,),
                                                  Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                                  SizedBox(width: 8,),
                                                  Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                                  SizedBox(width: 8,),
                                                  Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                                  SizedBox(width: 8,),
                                                  Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                                ],
                                              ),
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                text: 'Car license: ',
                                                style: DefaultTextStyle.of(context).style,
                                                children: const <TextSpan>[
                                                  TextSpan(text: 'NBG1234567', style: TextStyle(fontWeight: FontWeight.bold)),

                                                ],
                                              ),
                                            ),

                                            RichText(
                                              text: TextSpan(
                                                text: 'Date:  ',
                                                style: DefaultTextStyle.of(context).style,
                                                children: const <TextSpan>[
                                                  TextSpan(text: '10 aug 2023', style: TextStyle(fontWeight: FontWeight.bold)),

                                                ],
                                              ),
                                            ),


                                          ],
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      flex: 1,
                                        child: Image.asset("assets/images/Photo.png",width:70,height: 70,))
                                  ],
                                ),
                               const SizedBox(height: 10,),
                               const Text("Lorem ipsum dolor sit amet consectetur. Conguefames egestas tristique nisl sit nec eu scelerisquenam. Et senectus sed morbi quam.",
                                   maxLines: 3,
                                   style: TextStyle(
                                       color: Color(0xff737373),
                                       fontSize: 14,fontWeight:FontWeight.w400)),

                              ],
                            ),
                          ),
                        ),
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
