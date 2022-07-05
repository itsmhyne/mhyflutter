import 'package:get/get.dart';

import 'package:flutterapi/app/modules/dirbbox_login/bindings/dirbbox_login_binding.dart';
import 'package:flutterapi/app/modules/dirbbox_login/views/dirbbox_login_view.dart';
import 'package:flutterapi/app/modules/dirbbox_profile/bindings/dirbbox_profile_binding.dart';
import 'package:flutterapi/app/modules/dirbbox_profile/views/dirbbox_profile_view.dart';
import 'package:flutterapi/app/modules/forgot/bindings/forgot_binding.dart';
import 'package:flutterapi/app/modules/forgot/views/forgot_view.dart';
import 'package:flutterapi/app/modules/home/bindings/home_binding.dart';
import 'package:flutterapi/app/modules/home/views/home_view.dart';
import 'package:flutterapi/app/modules/intro/bindings/intro_binding.dart';
import 'package:flutterapi/app/modules/intro/views/intro_view.dart';
import 'package:flutterapi/app/modules/login/bindings/login_binding.dart';
import 'package:flutterapi/app/modules/login/views/login_view.dart';
import 'package:flutterapi/app/modules/register/bindings/register_binding.dart';
import 'package:flutterapi/app/modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DIRBBOX_LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INTRO,
      page: () => IntroView(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT,
      page: () => ForgotView(),
      binding: ForgotBinding(),
    ),
    GetPage(
      name: _Paths.DIRBBOX_LOGIN,
      page: () => DirbboxLoginView(),
      binding: DirbboxLoginBinding(),
    ),
    GetPage(
      name: _Paths.DIRBBOX_PROFILE,
      page: () => DirbboxProfileView(),
      binding: DirbboxProfileBinding(),
    ),
  ];
}
