import 'package:get/get.dart';

import '../modules/Idgham/bindings/idgham_binding.dart';
import '../modules/Idgham/views/idgham_view.dart';
import '../modules/Ikhfa/bindings/ikhfa_binding.dart';
import '../modules/Ikhfa/views/ikhfa_haqiqi_view.dart';
import '../modules/Ikhfa/views/ikhfa_syafawi_view.dart';
import '../modules/Ikhfa/views/ikhfa_view.dart';
import '../modules/Iqlab/bindings/iqlab_binding.dart';
import '../modules/Iqlab/views/iqlab_view.dart';
import '../modules/Izhar/bindings/izhar_binding.dart';
import '../modules/Izhar/views/izhar_halqi_view.dart';
import '../modules/Izhar/views/izhar_syafawi_view.dart';
import '../modules/Izhar/views/izhar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/menu/bindings/menu_binding.dart';
import '../modules/menu/views/menu_view.dart';
import '../modules/quiz/bindings/quiz_binding.dart';
import '../modules/quiz/views/quiz_view.dart';
import '../modules/result/bindings/result_binding.dart';
import '../modules/result/views/result_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MENU,
      page: () => const MenuView(),
      binding: MenuBinding(),
    ),
    GetPage(
      name: _Paths.IZHAR,
      page: () => const IzharView(),
      binding: IzharBinding(),
    ),
    GetPage(
      name: _Paths.HALQI,
      page: () => const IzharHalqi(),
      binding: IzharBinding(),
    ),
    GetPage(
      name: _Paths.SYAFAWI,
      page: () => const IzharSyafawi(),
      binding: IzharBinding(),
    ),
    GetPage(
      name: _Paths.IKHFA,
      page: () => const IkhfaView(),
      binding: IkhfaBinding(),
    ),
    GetPage(
      name: _Paths.HAQIQI,
      page: () => const IkhfaHaqiqi(),
      binding: IkhfaBinding(),
    ),
    GetPage(
      name: _Paths.IKHFA_SYAFAWI,
      page: () => const IkhfaSyafawi(),
      binding: IkhfaBinding(),
    ),
    GetPage(
      name: _Paths.IQLAB,
      page: () => const IqlabView(),
      binding: IqlabBinding(),
    ),
    GetPage(
      name: _Paths.IDGHAM,
      page: () => const IdghamView(),
      binding: IdghamBinding(),
    ),
    GetPage(
      name: _Paths.QUIZ,
      page: () => const QuizView(),
      binding: QuizBinding(),
    ),
    GetPage(
      name: _Paths.RESULT,
      page: () => const ResultView(),
      binding: ResultBinding(),
    ),
  ];
}
