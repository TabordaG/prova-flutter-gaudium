import 'package:entregaudium/config/routes/routes.dart';
import 'package:entregaudium/features/delivery_person/presentation/pages/delivery_person_profile_view.dart';
import 'package:entregaudium/features/initial/presentation/pages/home.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomePageView(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.deliveryPersonProfile,
      page: () => const DeliveryPersonProfilePageView(),
      transition: Transition.rightToLeft,
    ),
  ];
}
