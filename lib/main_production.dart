// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:authentication_repository/authentication_repository.dart';
import 'package:database_repository/database_repository.dart';
import 'package:todo_app/app/app.dart';
import 'package:todo_app/bootstrap.dart';

void main() {
  bootstrap(
    () => App(
      authRepo: AuthenticationRepository(),
      databaseRepo: DatabaseRepository(),
    ),
  );
}
