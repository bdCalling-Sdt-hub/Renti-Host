import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:renti_host/core/Language/language_component.dart';
import 'package:renti_host/core/Language/language_controller.dart';
import 'package:renti_host/core/Language/massages.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/service/notification.dart';
import 'package:renti_host/view/screens/select_language/language_controller/language_controller.dart';
import 'core/di_service/dependency_injection.dart' as di;
import 'core/Language/dep.dart' as dep;

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin=FlutterLocalNotificationsPlugin();

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.initDependency();
  await ScreenUtil.ensureScreenSize();
  await Get.put(LanguageController()).initStorage();

  Map<String,Map<String,String>> languages= await dep.init();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await NotificationHelper.initLocalNotification(flutterLocalNotificationsPlugin);
  runApp(MyApp(languages: languages));
}

class MyApp extends StatelessWidget {
  MyApp({super.key, required this.languages});
  final data = GetStorage();
  final Map<String ,Map<String,String>> languages;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetBuilder<LocalizationController>(
      builder: (localizationController) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.noTransition,
          transitionDuration: const Duration(milliseconds: 200),
          translations: Messages(languages:languages),
          locale: localizationController.locale,
          fallbackLocale:Locale(LanguageComponent.languages[0].languageCode,LanguageComponent.languages[0].countryCode),
          initialRoute: AppRoute.splashScreen,
          navigatorKey: Get.key,
          getPages: AppRoute.routes,
        );
      }
    );
  }
}
