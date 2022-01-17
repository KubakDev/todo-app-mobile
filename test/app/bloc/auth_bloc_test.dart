// tests for AuthBloc
import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_app/app/bloc/auth_bloc.dart';

class MockAuthBloc extends Mock implements AuthBloc {}

class MockAuthRepository extends Mock implements AuthenticationRepository {}

void main() {
  group('AuthBloc', () {
    late MockAuthRepository mockAuthRepository;
    setUp(() {
      mockAuthRepository = MockAuthRepository();
      when(mockAuthRepository.initAction).thenAnswer(
        Future.value,
      );
      when(mockAuthRepository.loginAction).thenAnswer(
        Future.value,
      );
      when(() => mockAuthRepository.status)
          .thenAnswer((_) => Stream.fromIterable([AuthStateloggedOut()]));
    });
    test('initial state is not logged in', () {
      expect(
        AuthBloc(mockAuthRepository).state,
        equals(const AuthNotLoggedIn()),
      );
    });

    blocTest<AuthBloc, AuthState>(
      'emits [1] when increment is called',
      build: () => AuthBloc(mockAuthRepository),
      act: (bloc) => bloc.add(const AuthLogin()),
      expect: () => [
        const AuthNotLoggedIn(),
      ],
    );

    // blocTest<CounterCubit, int>(
    //   'emits [-1] when decrement is called',
    //   build: CounterCubit.new,
    //   act: (cubit) => cubit.decrement(),
    //   expect: () => [equals(-1)],
    // );
  });
}
