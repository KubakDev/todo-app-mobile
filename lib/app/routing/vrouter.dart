import 'package:database_repository/database_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/app.dart';
import 'package:todo_app/edit_task/view/edit_task_page.dart';
import 'package:todo_app/home/view/home_page.dart';
import 'package:todo_app/login/login.dart';
import 'package:todo_app/profile/view/profile_page.dart';
import 'package:todo_app/settings/view/settings_page.dart';
import 'package:todo_app/shared/widgets/drawer.dart';
import 'package:vrouter/vrouter.dart';

const loginPath = '/login';
const homePath = '/home';
const profilePath = '/profile';
const settingsPath = '/settings';
const editTaskPath = '/edit';
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
        VNester(
          path: '/',
          widgetBuilder: (child) {
            return Builder(
              builder: (context) {
                return BlocProvider(
                  create: (context) => TodoBloc(
                    context.read<DatabaseRepository>(),
                    context.read<AuthBloc>(),
                  ),
                  child: CustomDrawer(child: child),
                );
              },
            );
          },
          nestedRoutes: [
            VWidget(
              path: homePath,
              widget: const HomePage(),
              stackedRoutes: [
                VWidget(
                  path: '$editTaskPath/:todoId',
                  widget: const EditTaskPage(),
                ),
                VWidget(path: editTaskPath, widget: const EditTaskPage()),
              ],
            ),
            VWidget(
              path: profilePath,
              widget: const ProfilePage(),
            ),
            VWidget(
              path: settingsPath,
              widget: const SettingsPage(),
            ),
          ],
        ),
      ],
    ),
    VRouteRedirector(path: ':_(.+)', redirectTo: homePath)
  ];
}
