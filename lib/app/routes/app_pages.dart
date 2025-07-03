import 'package:get/get.dart';
import 'package:task_app/presentation/auth/bindings/auth_bindings.dart';
import 'package:task_app/presentation/auth/view/signup/signup_screen.dart';
import 'package:task_app/presentation/auth/view/login/login_screen.dart';
import 'package:task_app/presentation/dashboard/view/dashboard_screen.dart';
import 'package:task_app/presentation/intro/view/intro_screen.dart';
import 'package:task_app/presentation/splash/bindings/splash_bindings.dart';
import 'package:task_app/presentation/splash/view/splash_screen.dart';

import '../../presentation/account/view/account_screen.dart';
import '../../presentation/profile/view/profile_screen.dart';
import '../../presentation/settings/view/settings_screen.dart';
import 'app_routes.dart';

class AppPages{

  static var routes=[
    GetPage(name: AppRoutes.initialRoute, page:()=>SplashScreen(),binding: SplashBindings()),
    GetPage(name: AppRoutes.intro, page: ()=>IntroScreen()),

    GetPage(name: AppRoutes.login, page: ()=>LoginScreen(),binding: AuthBindings()),
    GetPage(name: AppRoutes.signup, page:()=>SignupScreen(),binding: AuthBindings()),

    GetPage(name: AppRoutes.dashboard, page: ()=>DashboardScreen()),
    GetPage(name: AppRoutes.profile, page: ()=>ProfileScreen()),
    GetPage(name: AppRoutes.account, page: ()=>AccountScreen()),
    GetPage(name: AppRoutes.settings, page: ()=>SettingsScreen()),

  ];

}