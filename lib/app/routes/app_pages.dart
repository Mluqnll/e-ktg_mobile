import 'package:get/get.dart';

import '../modules/atraksi/bindings/atraksi_binding.dart';
import '../modules/atraksi/views/atraksi_view.dart';
import '../modules/calender/bindings/kalender_binding.dart';
import '../modules/calender/views/kalender_view.dart';
import '../modules/details/bindings/detail_gambar_binding.dart';
import '../modules/details/views/detail_gambar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/maps/bindings/peta_binding.dart';
import '../modules/maps/views/peta_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
      transition: Transition.fadeIn,
      children: [
        GetPage(
          name: _Paths.LOGIN,
          page: () => LoginView(),
          binding: LoginBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.ATRAKSI,
      page: () => AtraksiView(),
      binding: AtraksiBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.DETAIL_GAMBAR,
      page: () => DetailGambarView(),
      binding: DetailGambarBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.PETA,
      page: () => PetaView(),
      binding: PetaBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.KALENDER,
      page: () => KalenderView(),
      binding: KalenderBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(),
      binding: NotificationBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
