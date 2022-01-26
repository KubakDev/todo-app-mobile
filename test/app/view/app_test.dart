// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:database_repository/database_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:todo_app/app/app.dart';
import 'package:todo_app/home/home.dart';
import 'package:todo_app/login/login.dart';

class MockAuthenticationRepository extends Mock
    implements AuthenticationRepository {}

class MockDatabaseRepository extends Mock implements DatabaseRepository {}

void main() {
  group('App', () {
    late final MockAuthenticationRepository mockAuthenticationRepository;
    late final MockDatabaseRepository mockDatabaseRepository;

    setUpAll(() {
      mockAuthenticationRepository = MockAuthenticationRepository();
      mockDatabaseRepository = MockDatabaseRepository();
      TestWidgetsFlutterBinding.ensureInitialized();

      when(() => mockDatabaseRepository.status).thenAnswer(
        (_) => Stream.fromIterable([]),
      );
    });
    testWidgets('renders Login Page when logged out', (tester) async {
      when(mockAuthenticationRepository.initAction).thenAnswer(
        Future.value,
      );
      when(() => mockAuthenticationRepository.status)
          .thenAnswer((_) => Stream.fromIterable([AuthRepologgedOut()]));
      await tester.pumpWidget(
        App(
          authRepo: mockAuthenticationRepository,
          databaseRepo: mockDatabaseRepository,
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(LoginPage), findsOneWidget);
    });

    testWidgets('renders Home Page when logged in', (tester) async {
      when(mockAuthenticationRepository.initAction).thenAnswer(
        Future.value,
      );
      when(() => mockAuthenticationRepository.status).thenAnswer(
        (_) => Stream.fromIterable(
          [
            const AuthRepologgedIn(
              User('test', 'https://picsum.photos/200/300.jpg'),
            )
          ],
        ),
      );
      await mockNetworkImages(() async {
        await tester.pumpWidget(
          App(
            authRepo: mockAuthenticationRepository,
            databaseRepo: mockDatabaseRepository,
          ),
        );
        await tester.pumpAndSettle();
        expect(find.byType(HomePage), findsOneWidget);
      });
    });
    testWidgets('renders Login page then Home Page after logging in',
        (tester) async {
      when(mockAuthenticationRepository.initAction).thenAnswer(
        Future.value,
      );
      final _controller = StreamController<AuthRepoState>()
        ..add(AuthRepologgedOut());

      when(() => mockAuthenticationRepository.status).thenAnswer(
        (_) => _controller.stream,
      );
      await mockNetworkImages(() async {
        await tester.pumpWidget(
          App(
            authRepo: mockAuthenticationRepository,
            databaseRepo: mockDatabaseRepository,
          ),
        );
        await tester.pumpAndSettle();
        expect(find.byType(LoginPage), findsOneWidget);
        _controller.add(
          const AuthRepologgedIn(
            User('test', 'https://picsum.photos/200/300.jpg'),
          ),
        );

        await tester.pumpAndSettle();
        expect(find.byType(HomePage), findsOneWidget);
      });
    });
  });
}
