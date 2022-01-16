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
import 'package:todo_app/app/bloc/auth_bloc.dart';
import 'package:todo_app/login/login.dart';
// import 'package:todo_app/l10n/l10n.dart';
import 'package:todo_app/shared/shared.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const LoginView(),
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>
    with SingleTickerProviderStateMixin {
  late RubberAnimationController _controller;

  @override
  void initState() {
    _controller = RubberAnimationController(
      vsync: this,
      upperBoundValue: AnimationControllerValue(pixel: 410),
      lowerBoundValue: AnimationControllerValue(pixel: 400),
      duration: const Duration(milliseconds: 300),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.read<AuthBloc>();
    final size = MediaQuery.of(context).size;
    // final l10n = context.l10n;
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthLoadingStored) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        return Scaffold(
          backgroundColor: kPrimaryColor4,
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
                  color: kPrimaryColor3.withOpacity(0.1),
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
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      const Expanded(flex: 2, child: SizedBox.expand()),
                      Expanded(
                        flex: 6,
                        child: FittedBox(
                          child: SizedBox(
                            width: 300,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  '''
We are
what we do''',
                                  style: kTextStyleH1,
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '''
Todo helps you remember
your important tasks''',
                                  textAlign: TextAlign.left,
                                  style: kTextStyleH2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Expanded(flex: 3, child: SizedBox.expand()),
                      Center(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: const LinearGradient(
                              colors: [
                                kSecondaryColor,
                                kSecondaryColor2,
                              ],
                            ),
                          ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              alignment: Alignment.center,
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.only(
                                  right: 80,
                                  left: 80,
                                  top: 15,
                                  bottom: 15,
                                ),
                              ),
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
                            child: state is AuthLoading
                                ? const CircularProgressIndicator()
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
                      if (state is AuthError)
                        Center(
                          child: SizedBox(
                            height: 100,
                            child: Text('${state.error}'),
                          ),
                        ),
                      const Expanded(flex: 2, child: SizedBox.expand()),
                    ],
                  ),
                ),
              ),
              animationController: _controller,
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

class CounterText extends StatelessWidget {
  const CounterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = context.select((CounterCubit cubit) => cubit.state);
    return Text('$count', style: theme.textTheme.headline1);
  }
}
// class CounterView extends StatelessWidget {
//   const CounterView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     // final l10n = context.l10n;
//     return Scaffold(
//       backgroundColor: kPrimaryColor4,
//       body: SafeArea(
//         child: SlidingUpPanel(
//           borderRadius: const BorderRadius.only(
//             topLeft: Radius.circular(30),
//             topRight: Radius.circular(30),
//           ),
//           minHeight: size.height * 0.45,
//           panel: const Center(
//             child: Text('This is the sliding Widget'),
//           ),
//           body: Center(
//             child: Column(
//               children: [
//                 Expanded(child: SvgPicture.asset('assets/images/hero_img.svg')),
//                 Expanded(
//                   child: SizedBox(
//                     height: size.height * 0.45,
//                   ),
//                 ),
//                 //CounterText(),
//               ],
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: () => context.read<CounterCubit>().increment(),
//             child: const Icon(Icons.add),
//           ),
//           const SizedBox(height: 8),
//           FloatingActionButton(
//             onPressed: () => context.read<CounterCubit>().decrement(),
//             child: const Icon(Icons.remove),
//           ),
//         ],
//       ),
//     );
//   }
// }
