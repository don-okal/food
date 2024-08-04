import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/features/auth/presentation/auth.dart';
import 'package:food/features/splash/splash_screen.dart';
import 'package:food/generated/l10n.dart';
import 'package:food/utils/constant.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return GetMaterialApp(
          locale: const Locale('ar'),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          theme: ThemeData(scaffoldBackgroundColor: backGroundColor),
          initialRoute: '/SplashScreen',
          getPages: [
            GetPage(
              name: '/Auth',
              page: () => const Auth(),
            ),
            GetPage(
              name: '/SplashScreen',
              page: () => const SplashScreen(),
            ),
          ],
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
