import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/service/notification.dart';
import 'package:renti_host/view/screens/select_language/language/languages.dart';
import 'package:renti_host/view/screens/select_language/language_controller/language_controller.dart';
import 'core/di_service/dependency_injection.dart' as di;
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin=FlutterLocalNotificationsPlugin();

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.initDependency();
  await ScreenUtil.ensureScreenSize();
  await Get.put(LanguageController()).initStorage();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await NotificationHelper.initLocalNotification(flutterLocalNotificationsPlugin);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final data = GetStorage();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.noTransition,
      transitionDuration: const Duration(milliseconds: 200),
      translations: Languages(),
      locale: Get.find<LanguageController>().language.val ?  const Locale("es", "MX") : const Locale("en" , "US"),
      fallbackLocale:const Locale("en" , "US"),
      initialRoute: AppRoute.splashScreen,
      navigatorKey: Get.key,
      getPages: AppRoute.routes,
    );
  }
}
