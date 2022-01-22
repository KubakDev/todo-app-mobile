import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/bloc/auth_bloc.dart';
import 'package:todo_app/app/routing/vrouter.dart';
import 'package:todo_app/shared/shared.dart';
import 'package:vrouter/vrouter.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required this.authRepo,
  }) : super(key: key);
  final AuthenticationRepository authRepo;
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => authRepo,
      child: Builder(
        builder: (context) {
          return BlocProvider(
            create: (context) {
              return AuthBloc(
                context.read<AuthenticationRepository>(),
              );
            },
            child: const AppWidget(),
          );
        },
      ),
    );
  }
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();

    return VRouter(
      routes: generateRoutes(authBloc),
      debugShowCheckedModeBanner: false,
      theme: themeData(context),
      builder: (context, child) {
        return BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            final vrouter = context.vRouter;
            if (state is AuthLoggedIn && vrouter.path == loginPath) {
              vrouter.to(homePath);
            } else if (vrouter.path != loginPath && state is! AuthLoggedIn) {
              vrouter.to(loginPath);
            }
          },
          child: child,
        );
      },
    );
  }
}
