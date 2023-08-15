import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/profile_screen/edit_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          appBar: AppBar(
            titleSpacing: 20,
            automaticallyImplyLeading: false,
            backgroundColor: const Color(0xFFFFFFFF),
            title: const Text(
              'Profile',
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
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 24, top: 24),
                      child: Column(
                        children: [
                          Container(
                            height: 82,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                                color: Color(0xff000B90),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        child: Image.asset('assets/images/profile_photo.png',),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,

                                        ),
                                      ),
                                      const  SizedBox(width: 16,),
                                      const Text(
                                        'John Doe',
                                        style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  IconButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const EditProfileScreen()));
                                  }, icon:const Icon(Icons.edit_note_sharp,size: 20,color: Color(0xffFFFFFF),))

                                ],
                              ),
                            ),
                          ),
                         const SizedBox(height: 8,),

                          Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color:const Color(0xffFFFFFF),
                            ),
                            child:const Card(
                                elevation: 5,
                                child: Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.add_card_rounded,color: Color(0xff999999),size: 20,),
                                      SizedBox(width: 18,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('INE',style: TextStyle(
                                              color: Color(0xFF999999),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),),
                                          SizedBox(height: 8,),
                                          Text('1231 1231 1231 1231',style: TextStyle(
                                              color: Color(0xFF2E2C2C),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),),
                                        ],
                                      )
                                    ],
                                  ),
                                )

                            ),
                          ),
                          const SizedBox(height: 8,),
                          Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffFFFFFF),
                            ),
                            child:const Card(
                                elevation: 5,
                                child: Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.email,color: Color(0xff999999),size: 20,),
                                      SizedBox(width: 18,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Email',style: TextStyle(
                                              color: Color(0xFF999999),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),),
                                          SizedBox(height: 8,),
                                          Text('johndoe@gmail.com',style: TextStyle(
                                              color: Color(0xFF2E2C2C),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),),
                                        ],
                                      )
                                    ],
                                  ),
                                )

                            ),
                          ),
                          const SizedBox(height: 8,),
                          Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffFFFFFF),
                            ),
                            child:const Card(
                                elevation: 5,
                                child: Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.call,color: Color(0xff999999),size: 20,),
                                      SizedBox(width: 18,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Phone',style: TextStyle(
                                              color: Color(0xFF999999),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),),
                                          SizedBox(height: 8,),
                                          Text('+52 2343545666',style: TextStyle(
                                              color: Color(0xFF2E2C2C),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),),
                                        ],
                                      )
                                    ],
                                  ),
                                )

                            ),
                          ),
                          const SizedBox(height: 8,),
                          Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffFFFFFF),
                            ),
                            child:const Card(
                                elevation: 5,
                                child: Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.date_range_outlined,color: Color(0xff999999),size: 20,),
                                      SizedBox(width: 18,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Date of Birth',style: TextStyle(
                                              color: Color(0xFF999999),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),),
                                          SizedBox(height: 8,),
                                          Text('12-08-1998',style: TextStyle(
                                              color: Color(0xFF2E2C2C),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),),
                                        ],
                                      )
                                    ],
                                  ),
                                )

                            ),
                          ),
                          const SizedBox(height: 8,),
                          Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffFFFFFF),
                            ),
                            child:const Card(
                                elevation: 5,
                                child: Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.male,color: Color(0xff999999),size: 20,),
                                      SizedBox(width: 18,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Gender',style: TextStyle(
                                              color: Color(0xFF999999),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),),
                                          SizedBox(height: 8,),
                                          Text('Female',style: TextStyle(
                                              color: Color(0xFF2E2C2C),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),),
                                        ],
                                      )
                                    ],
                                  ),
                                )

                            ),
                          ),
                          const SizedBox(height: 8,),
                          Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffFFFFFF),
                            ),
                            child:const Card(
                                elevation: 5,
                                child: Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_city,color: Color(0xff999999),size: 20,),
                                      SizedBox(width: 18,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Address',style: TextStyle(
                                              color: Color(0xFF999999),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),),
                                          SizedBox(height: 8,),
                                          Text('Privada Calle 109 - Piso 4',style: TextStyle(
                                              color: Color(0xFF2E2C2C),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),),
                                        ],
                                      )
                                    ],
                                  ),
                                )

                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
    ));
  }
}
