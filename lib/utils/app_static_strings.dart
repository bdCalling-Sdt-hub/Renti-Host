import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/utils/app_colors.dart';

class AppStaticStrings {


  static const String reserved = "Reserved";


  //Messages Screen All Strings
  static const String messages = "Messages";
  static const String bessieCooper = "Bessie Cooper";
  static const String messageDemo =   "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium";
  static const String complete = "Complete";

  //Profile Screen All Strings
  static const String profile = "Profile";
  static const String ine = "INE";
  static const String mobile = "Mobile";

  //Edit Profile Screen All Screens
  static const String profileEdit = "Profile Edit";
  static const String name1 = "Name";
  static const String save = "Save";


  //Settings All Strings
  static const String changePassword = "Change Password";
  static const String currentPassword = "Current Password";
  static const String enterCurrentPassword = "Enter Current Password";
  static const String enterNewPassword = "Enter New Password";
  static const String enterConfirmPassword = "Enter Confirm Password";
  static const String addNew = "Add Card";
  static const String addNewCard = "Add New Card";
  static const String bankAccountNumber = "Bank Account Number";
  static const String enterAccountNumber = "Enter Account Number";
  static const String changeLanguage = "Change Language";
  static const String paymentMethod = "Payment Method";
  static const String addDebitCard = "Add Debit Card";
  static const String privacyPolicy = "Privacy Policy";


  //logOut pop up Strings
  static const String deleteMessage = "You sure want to delete message?";


//HintTextStyle
  static TextStyle hintStyle = GoogleFonts.poppins(
      fontSize: 14,
      color: AppColors.whiteNormalActive,
      fontWeight: FontWeight.w400);
}
