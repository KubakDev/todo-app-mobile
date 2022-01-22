// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_app/app/app.dart';
import 'package:todo_app/home/home.dart';
import 'package:todo_app/login/login.dart';

class MockAuthenticationRepository extends Mock
    implements AuthenticationRepository {}

void main() {
  group('App', () {
    testWidgets('renders Login Page when logged out', (tester) async {
      final mockAuthenticationRepository = MockAuthenticationRepository();
      when(mockAuthenticationRepository.initAction).thenAnswer(
        Future.value,
      );
      when(() => mockAuthenticationRepository.status)
          .thenAnswer((_) => Stream.fromIterable([AuthRepologgedOut()]));
      await tester.pumpWidget(
        App(
          authRepo: mockAuthenticationRepository,
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(LoginPage), findsOneWidget);
    });

    testWidgets('renders Home Page when logged in', (tester) async {
      final mockAuthenticationRepository = MockAuthenticationRepository();
      when(mockAuthenticationRepository.initAction).thenAnswer(
        Future.value,
      );
      when(() => mockAuthenticationRepository.status).thenAnswer(
        (_) => Stream.fromIterable(
          [const AuthRepologgedIn(User('test', 'test'))],
        ),
      );
      await tester.pumpWidget(
        App(
          authRepo: mockAuthenticationRepository,
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(HomePage), findsOneWidget);
    });
    testWidgets('renders Login page then Home Page after logging in',
        (tester) async {
      final mockAuthenticationRepository = MockAuthenticationRepository();
      when(mockAuthenticationRepository.initAction).thenAnswer(
        Future.value,
      );
      final _controller = StreamController<AuthRepoState>()
        ..add(AuthRepologgedOut());

      when(() => mockAuthenticationRepository.status).thenAnswer(
        (_) => _controller.stream,
      );

      await tester.pumpWidget(
        App(
          authRepo: mockAuthenticationRepository,
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(LoginPage), findsOneWidget);
      _controller.add(const AuthRepologgedIn(User('test', 'test')));

      await tester.pumpAndSettle();
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
