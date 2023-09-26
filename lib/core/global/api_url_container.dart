class ApiUrlContainer {
  static const String baseUrl = "http://192.168.10.14:3001/api/";

  //13.52.186.90:3001
  //192.168.10.14:3001

  static const String signInEndPoint = "user/sign-in";
  static const String signUpEndPoint = "user/signup";
  static const String forgotPassEndPoint = "user/forget-password";
  static const String oneTimeCodeEndPoint = "user/verify-code";
  static const String resetPassEndPoint = "user/verify-code";

  static const String carAddEndPoint = "car/add";
  static const String carListEndPoint = "car/add";

  //Privacy Policy
  static const String privacyPolicyEndPoint = "privacyPolicy/all";

  //Privacy Policy
  static const String termsConditionEndPoint = "termsConditionRouter/all";

  //Privacy Policy
  static const String aboutUSEndPoint = "about/all";

  //Profile
  static const String profile = "user/user-info";

  //Edit Profile
  static const String editProfile = "user/update/";

  //Rent Request All
  static const String rentRequestAll = "rent/all/";

  //User List All
  static const String userList = "user/host-user-list";

  //Total Income
  static const String totalIncome = "dashboard/host-income/";
}
