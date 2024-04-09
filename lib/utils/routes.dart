import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:uniqcast_flutter_task/screens/login/login_screen.dart';

import '../screens/login/login_binding.dart';

final pages = [
  GetPage(
    name: Routes.loginScreen,
    page: LoginScreen.new,
    binding: LoginBindings(),
  ),
];

class Routes {
  static const loginScreen = '/hello_screen';
}
