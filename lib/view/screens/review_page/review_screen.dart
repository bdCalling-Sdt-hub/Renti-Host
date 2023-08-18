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
              child:Padding(
                padding: EdgeInsetsDirectional.symmetric(vertical: 24,horizontal: 20),
                child: Column(
                    children: List.generate(50, (index) =>GestureDetector(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (_)=>UserDetailsScreen()));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Container(

                          width: MediaQuery.of(context).size.width,
                          height: 170,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            shadows: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 10,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.symmetric(vertical: 16,horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("assets/images/Avater.png"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8,),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'John Doe',
                                            style: TextStyle(
                                              color: Color(0xFF2E2C2C),
                                              fontSize: 18,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              height: 1.40,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                              SizedBox(width: 4,),
                                              Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                              SizedBox(width: 4,),
                                              Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                              SizedBox(width: 4,),
                                              Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                              SizedBox(width: 4,),
                                              Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                            ],
                                          ),
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Car license: ',
                                                  style: TextStyle(
                                                    color: Color(0xFF999999),
                                                    fontSize: 10,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.40,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'NBG1234567',
                                                  style: TextStyle(
                                                    color: Color(0xFF2E2C2C),
                                                    fontSize: 10,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.40,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Date: ',
                                                  style: TextStyle(
                                                    color: Color(0xFF999999),
                                                    fontSize: 10,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.40,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '10 aug 2023',
                                                  style: TextStyle(
                                                    color: Color(0xFF2E2C2C),
                                                    fontSize: 10,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.40,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("assets/images/Carphoto.png"),
                                            fit: BoxFit.cover,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(40),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 16),
                                Text(
                                  'Lorem ipsum dolor sit amet consectetur. Congue fames egestas tristique nisl sit nec eu scelerisque nam. Et senectus sed morbi quam.',
                                  maxLines: 3,
                                  style: TextStyle(
                                    color: Color(0xFF737373),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 1.40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ) ,)
                ),
              )
          );
        },
      ),
    );
  }
}
