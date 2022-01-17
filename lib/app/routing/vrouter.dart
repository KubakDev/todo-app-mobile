import 'package:todo_app/app/bloc/auth_bloc.dart';
import 'package:todo_app/home/view/home_page.dart';
import 'package:todo_app/login/login.dart';
import 'package:vrouter/vrouter.dart';

const loginPath = '/login';
const homePath = '/home';
List<VRouteElement> generateRoutes(AuthBloc authBloc) {
  return [
    VGuard(
      beforeEnter: (vRedirector) async {
        if (authBloc.isLoggedIn) {
          vRedirector.to(homePath);
        }
      },
      stackedRoutes: [
        VWidget(path: loginPath, widget: const LoginPage()),
      ],
    ),
    VGuard(
      beforeEnter: (vRedirector) async {
        if (!authBloc.isLoggedIn) {
          vRedirector.to(
            loginPath,
            queryParameters: vRedirector.fromUrl != null
                ? {'continue': vRedirector.fromUrl!}
                : {},
          );
        }
      },
      stackedRoutes: [
        VWidget(path: homePath, widget: const HomePage()),
      ],
    ),
    VRouteRedirector(path: ':_(.+)', redirectTo: homePath)
  ];
}
