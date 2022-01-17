// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_app/app/bloc/auth_bloc.dart';

class MockAuthRepository extends Mock implements AuthenticationRepository {}

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget) {
    final mockAuthRepository = MockAuthRepository();
    when(mockAuthRepository.initAction).thenAnswer(
      Future.value,
    );
    when(() => mockAuthRepository.status)
        .thenAnswer((_) => Stream.fromIterable([AuthStateloggedOut()]));

    return pumpWidget(
      RepositoryProvider.value(
        value: mockAuthRepository,
        child: BlocProvider(
          create: (context) => AuthBloc(mockAuthRepository),
          child: MaterialApp(
            home: widget,
          ),
        ),
      ),
    );
  }
}
