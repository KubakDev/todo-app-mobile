import 'package:todo_app/home/view/home_page.dart';
import 'package:todo_app/login/login.dart';
import 'package:vrouter/vrouter.dart';

const loginPath = '/login';
const homePath = '/home';
final routes = [
  VWidget(path: loginPath, widget: const LoginPage()),
  VWidget(path: homePath, widget: const HomePage()),
  VRouteRedirector(path: ':_(.+)', redirectTo: homePath)
];
