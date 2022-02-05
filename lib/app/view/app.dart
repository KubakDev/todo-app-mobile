import 'package:authentication_repository/authentication_repository.dart';
import 'package:database_repository/database_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/app.dart';
import 'package:todo_app/shared/shared.dart';
import 'package:vrouter/vrouter.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required this.authRepo,
    required this.databaseRepo,
  }) : super(key: key);
  final AuthenticationRepository authRepo;
  final DatabaseRepository databaseRepo;
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => authRepo),
        RepositoryProvider(create: (context) => databaseRepo),
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => AuthBloc(
                  context.read<AuthenticationRepository>(),
                ),
              ),
              BlocProvider(
                create: (context) => SettingsCubit(),
              ),
            ],
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

    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return VRouter(
          routes: generateRoutes(authBloc),
          debugShowCheckedModeBanner: false,
          theme: themeData(context, state.theme),
          buildTransition: (context, animation, child) {
            return FadeTransition(
              opacity: context,
              child: child,
            );
          },
          builder: (context, child) {
            return BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                final vrouter = context.vRouter;
                if (state is AuthLoggedIn && vrouter.path == loginPath) {
                  vrouter.to(homePath);
                } else if (vrouter.path != loginPath &&
                    state is! AuthLoggedIn) {
                  vrouter.to(loginPath);
                }
              },
              child: child,
            );
          },
        );
      },
    );
  }
}
