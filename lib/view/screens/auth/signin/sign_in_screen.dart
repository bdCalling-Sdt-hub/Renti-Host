import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/auth/signin/inner_widget/sign_in_auth.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/container/custon_container.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blueNormal,
        appBar: const CustomAppBar(appBarContent: CustomText(text: AppStaticStrings.signIn,fontSize: 18,color: AppColors.whiteLight),),
        body: CustomContainer(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>
                SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SignInAuth(),

                  //Don't have an Account? Sign Up Text button
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoute.signUpScreen);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: RichText(
                        text: TextSpan(
                          text: AppStaticStrings.haveAnAccount,
                          style: GoogleFonts.poppins(
                              color: AppColors.blackNormal,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                          children: [
                            TextSpan(
                              text: AppStaticStrings.signUp,
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blueNormal),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
