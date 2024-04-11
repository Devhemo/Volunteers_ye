import 'package:flutter/material.dart';
import 'package:Volunteers.ye/presentation/change_password_screen/change_password_screen.dart';

import 'package:Volunteers.ye/presentation/menu_screen/menu.dart';
import 'package:Volunteers.ye/presentation/otp_code_screen/otp_code_screen.dart';

import '../presentation/enter_password_screen/enter_password_screen.dart';
import '../presentation/forgot_password_sent_screen/forgot_password_sent_screen.dart';
import '../presentation/log_in_page_tab_container_screen/log_in_page_tab_container_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';
  static const String enterPasswordScreen = '/enter_password_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String forgotPasswordSentScreen = '/forgot_password_sent_screen';

  static const String logInPageonePage = '/log_in_pageone_page';

  static const String logInPage = '/log_in_page';

  static const String logInPageTabContainerScreen =
      '/log_in_page_tab_container_screen';

  static const String otpCodeScreen = '/otp_code_screen';
  static const String home = '/home';
  static const String signUpScreen = '/sign_up_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String menuscreen = '/menu_screen';

  static Map<String, WidgetBuilder> routes = {
    enterPasswordScreen: (context) => EnterPasswordScreen(),
    forgotPasswordSentScreen: (context) => ForgotPasswordSentScreen(),
    logInPageTabContainerScreen: (context) => LogInPageTabContainerScreen(),
    otpCodeScreen: (context) => OtpCodeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    homeScreen: (context) => HomeScreen(),
    menuscreen: (context) => menu(),
    home: (context) => Home(),

    // signUpScreen: (context) => SignUpScreen()
  };
}
