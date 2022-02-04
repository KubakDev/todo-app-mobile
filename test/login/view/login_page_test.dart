// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_app/app/bloc/bloc.dart';
// import 'package:mocktail/mocktail.dart';

import 'package:todo_app/login/login.dart';

import '../../helpers/helpers.dart';

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

void main() {
  group('LoginPage', () {
    testWidgets('renders LoginPage', (tester) async {
      await tester.pumpApp(const LoginPage());
      await tester.pumpAndSettle();
      expect(find.byType(LoginView), findsOneWidget);
    });
  });

  group('CounterView', () {
    late AuthBloc authBloc;

    setUp(() {
      authBloc = MockAuthBloc();
    });

    testWidgets('renders not logged in state', (tester) async {
      const state = AuthNotLoggedIn();
      when(() => authBloc.state).thenReturn(state);
      await tester.pumpApp(
        BlocProvider.value(
          value: authBloc,
          child: const LoginView(),
        ),
      );
      expect(find.text('Get Started'), findsOneWidget);
    });

    // testWidgets('calls login when login button is tapped',
    //     (tester) async {
    //   when(() => authBloc.state).thenReturn(0);
    //   when(() => authBloc.).thenReturn(null);
    //   await tester.pumpApp(
    //     BlocProvider.value(
    //       value: authBloc,
    //       child: const LoginView(),
    //     ),
    //   );
    //   await tester.tap(find.byIcon(Icons.add));
    //   verify(() => authBloc.increment()).called(1);
    // });

    // testWidgets('calls decrement when decrement button is tapped',
    //     (tester) async {
    //   when(() => authBloc.state).thenReturn(0);
    //   when(() => authBloc.decrement()).thenReturn(null);
    //   await tester.pumpApp(
    //     BlocProvider.value(
    //       value: authBloc,
    //       child: const LoginView(),
    //     ),
    //   );
    //   await tester.tap(find.byIcon(Icons.remove));
    //   verify(() => authBloc.decrement()).called(1);
    // });
  });
}
