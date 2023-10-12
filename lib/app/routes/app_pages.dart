import 'package:get/get.dart';

import '../modules/bottom_navigation/bindings/bottom_navigation_binding.dart';
import '../modules/bottom_navigation/views/bottom_navigation_view.dart';
import '../modules/form_page/bindings/form_page_binding.dart';
import '../modules/form_page/views/form_page_view.dart';
import '../modules/hasil_lapor_page/bindings/hasil_lapor_page_binding.dart';
import '../modules/hasil_lapor_page/views/hasil_lapor_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/lapor_page/bindings/lapor_page_binding.dart';
import '../modules/lapor_page/views/lapor_page_view.dart';
import '../modules/login_page/bindings/login_page_binding.dart';
import '../modules/login_page/views/login_page_view.dart';
import '../modules/register_page/bindings/register_page_binding.dart';
import '../modules/register_page/views/register_page_view.dart';

part 'app_routes.dart';

//digunakan untuk mendefinisikan halaman-halaman (routes) dalam aplikasi.
class AppPages {
  AppPages._();

//Konstanta ini mendefinisikan rute awal aplikasi, yaitu 'LOGIN_PAGE'. Artinya, ketika aplikasi dijalankan, halaman pertama yang akan ditampilkan adalah halaman login.
  static const INITIAL = Routes.LOGIN_PAGE;

//aftar semua rute-rute yang ada dalam aplikasi.
//Setiap rute memiliki beberapa atribut, seperti 'name' (nama rute), 'page' (halaman yang akan ditampilkan), dan 'binding' (binding class untuk rute tersebut).
//Rute-rute ini kemudian digunakan oleh GetX untuk menavigasi antar halaman.
  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVIGATION,
      page: () => BottomNavigationView(),
      binding: BottomNavigationBinding(),
    ),
    GetPage(
      name: _Paths.LAPOR_PAGE,
      page: () => const LaporPageView(),
      binding: LaporPageBinding(),
    ),
    GetPage(
      name: _Paths.FORM_PAGE,
      page: () => const FormPageView(),
      binding: FormPageBinding(),
    ),
    GetPage(
      name: _Paths.HASIL_LAPOR_PAGE,
      page: () => const HasilLaporPageView(),
      binding: HasilLaporPageBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_PAGE,
      page: () => RegisterPageView(),
      binding: RegisterPageBinding(),
    ),
  ];
}
