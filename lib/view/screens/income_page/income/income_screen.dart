import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/income_page/income/inner_widgets/income_category.dart';


class IncomeScreen extends StatelessWidget {
  const IncomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            automaticallyImplyLeading: true,
            titleSpacing: -8,
            title: const Text('Income',
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
                weight: 18,
                size: 18,
              ),
              color: Color(0xff2E2C2C),
            )),
        body: LayoutBuilder(builder: (context, constraint) {
          return Padding(
            padding:
                const EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: ShapeDecoration(
                    color: const Color(0xff000B90),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 10,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Income',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          '\$ 1,20,000.00',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 40,
                            fontWeight: FontWeight.w400,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const IncomeCategory(),

              ],
            ),
          );
        }));
  }
}
