import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/authentication/screens/onboardings/onboarding.dart';
import 'utils/theme/theme.dart';

/// ---- USe this class to setup themes, initial Bindings, any animation and much more
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system, //Select system theme
      theme: TAppTheme.lightTheme, //Light theme custom
      darkTheme: TAppTheme.darkTheme, //Dark theme custom
      home: const OnBoardingScreen(),
    );
  }
}
