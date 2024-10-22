import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:Volunteers.ye/core/utils/size_utils.dart';

import 'package:Volunteers.ye/routes/app_routes.dart';
import 'package:Volunteers.ye/theme/theme_helper.dart';
// import 'package:rive/rive.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'Volunteers.ye',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.appNavigationScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
