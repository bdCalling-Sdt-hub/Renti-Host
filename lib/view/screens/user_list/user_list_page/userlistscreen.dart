import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/user_list/user_list_page/inner_widgets/user_details.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}
class _UserListScreenState extends State<UserListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            automaticallyImplyLeading: true,
            titleSpacing: -8,
            title: const Text('User List',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            backgroundColor: const Color(0xffffffff),
            leading: IconButton(
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (_)=>UserRequestScreen()));
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                weight: 18,
                size: 18,
              ),
              color: Colors.black,
            )),
        body: LayoutBuilder(builder: (context, constraint) {
          return const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(
                  vertical: 24, horizontal: 20),
              child: UserDetails()
            ),
          );
        }));
  }
}
