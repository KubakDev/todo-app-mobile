// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rubber/rubber.dart';
import 'package:todo_app/app/bloc/bloc.dart';
// import 'package:todo_app/l10n/l10n.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginView();
  }
}

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>
    with SingleTickerProviderStateMixin {
  late RubberAnimationController controller;

  @override
  void initState() {
    controller = RubberAnimationController(
      vsync: this,
      upperBoundValue: AnimationControllerValue(percentage: 0.6),
      lowerBoundValue: AnimationControllerValue(percentage: 0.55),
      duration: const Duration(milliseconds: 300),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.read<AuthBloc>();
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthRefreshingToken || state is AuthLoggedIn) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        return Scaffold(
          backgroundColor: theme.cardColor,
          body: SafeArea(
            child: RubberBottomSheet(
              dragFriction: 0.7,
              lowerLayer: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: SvgPicture.asset('assets/images/hero_img.svg'),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: size.height * 0.45,
                      ),
                    ),
                    //CounterText(),
                  ],
                ),
              ),
              upperLayer: Container(
                decoration: BoxDecoration(
                  color: theme.hintColor.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          width: 35,
                          height: 5,
                          margin: const EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.secondary,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox.expand()),
                      Expanded(
                        flex: 6,
                        child: FittedBox(
                          child: SizedBox(
                            width: 300,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '''
We are
what we do''',
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: theme.colorScheme.primary,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  '''
Todo helps you remember
your important tasks''',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: theme.colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox.expand()),
                      Center(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              colors: [
                                theme.colorScheme.secondary,
                                theme.colorScheme.secondaryContainer,
                              ],
                            ),
                          ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              alignment: Alignment.center,
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            onPressed: () {
                              auth.add(const AuthEvent.login());
                            },
                            child: SizedBox(
                              width: size.width * 0.65,
                              height: 55,
                              child: Center(
                                child: state is AuthLoading ||
                                        state is AuthLoggedIn
                                    ? const CircularProgressIndicator(
                                        color: Colors.white,
                                      )
                                    : const Text(
                                        'Get Started',
                                        style: TextStyle(
                                          color: Color(0xffffffff),
                                          // fontWeight: FontWeight.w500,
                                          fontSize: 24,
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      if (state is AuthError)
                        Center(
                          child: SizedBox(
                            height: 40,
                            child: SingleChildScrollView(
                              child: Text(
                                '${state.error}',
                                style: TextStyle(color: Colors.redAccent[200]),
                              ),
                            ),
                          ),
                        ),
                      const Expanded(child: SizedBox.expand()),
                    ],
                  ),
                ),
              ),
              animationController: controller,
            ),
          ),
          // floatingActionButton: Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   children: [
          //     FloatingActionButton(
          //       onPressed: () => context.read<CounterCubit>().increment(),
          //       child: const Icon(Icons.add),
          //     ),
          //     const SizedBox(height: 8),
          //     FloatingActionButton(
          //       onPressed: () => context.read<CounterCubit>().decrement(),
          //       child: const Icon(Icons.remove),
          //     ),
          //   ],
          // ),
        );
      },
    );
  }
}
