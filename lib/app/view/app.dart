import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:todo_app/app/bloc/auth_bloc.dart';
import 'package:todo_app/app/routing/vrouter.dart';
import 'package:todo_app/l10n/l10n.dart';
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
            create: (context) =>
                AuthBloc(context.read<AuthenticationRepository>()),
            child: const AppWidget(),
          );
        },
      ),
    );
  }
}

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (kDebugMode) {
          print('rebuilding app with $state');
        }
        return VRouter(
          routes: routes,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
            colorScheme: ColorScheme.fromSwatch(
              accentColor: const Color(0xFF13B9FF),
            ),
          ),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          beforeEnter: (vRedirector) async {
            if (state is AuthLoggedIn && vRedirector.toUrl == '/login') {
              vRedirector.to('/home');
            } else if (vRedirector.toUrl != '/login') {
              vRedirector.to('/login');
            }
          },
          builder: (context, child) {
            return BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                final of = VRouter.of(context);
                if (state is AuthLoggedIn && of.path == loginPath) {
                  of.to(homePath);
                } else if (of.path != loginPath) {
                  of.to(loginPath);
                }
              },
              child: child,
            );
          },
          supportedLocales: AppLocalizations.supportedLocales,
        );
      },
    );
  }
}
