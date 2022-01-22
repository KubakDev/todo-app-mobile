import 'dart:async';
import 'dart:convert';

import 'package:authentication_repository/src/models/models.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

const FlutterSecureStorage secureStorage = FlutterSecureStorage();
const String auth0Domain = 'dev-lmrxa-v2.eu.auth0.com';
const String auth0ClientId = 'wnMlcJ2Cy414JOsjMLPjNTVEVpiFExCV';
const String auth0RedirectUri = 'io.kubakdev.todoapp://oauthredirect';
const String auth0Issuer = 'https://$auth0Domain';
const todoSettingsBoxName = 'todo_settings';

class AuthenticationRepository {
  AuthenticationRepository() : appAuth = FlutterAppAuth();

  final box = Hive.box<dynamic>(todoSettingsBoxName);
  final FlutterAppAuth appAuth;

  final _controller = StreamController<AuthRepoState>();

  Stream<AuthRepoState> get status async* {
    yield AuthRepologgedOut();
    yield* _controller.stream;
  }

  Future<void> initAction() async {
    _controller.add(AuthRepoRefreshingToken());

    final storedRefreshToken = await secureStorage.read(key: 'refresh_token');
    if (storedRefreshToken == null) {
      _controller.add(AuthRepologgedOut());
      return;
    }

    try {
      final response = await appAuth.token(
        TokenRequest(
          auth0ClientId,
          auth0RedirectUri,
          issuer: auth0Issuer,
          refreshToken: storedRefreshToken,
          additionalParameters: {'audience': 'http://localhost:5000'},
        ),
      );
      if (response != null &&
          response.idToken != null &&
          response.accessToken != null) {
        final idToken = parseIdToken(response.idToken!);
        final profile = await getUserDetails(response.accessToken!);
        await box.put('token', response.accessToken);
        await secureStorage.write(
          key: 'refresh_token',
          value: response.refreshToken,
        );
        _controller.add(
          AuthRepologgedIn(
            User(
              idToken['nickname'] as String? ?? '',
              profile['picture'] as String? ?? '',
            ),
          ),
        );
      } else {
        _controller.add(const AuthRepohasError('Code 1 Auth response is null'));
      }
    } on Exception catch (e, s) {
      _controller.add(AuthRepohasError('Code 2 $e $s'));
      await logoutAction();
    }
  }

  Map<String, dynamic> parseIdToken(String idToken) {
    final parts = idToken.split('.');
    assert(parts.length == 3, 'Invalid id token');

    final decode = utf8.decode(base64Url.decode(base64Url.normalize(parts[1])));
    final dynamic jsonDecode2 = jsonDecode(decode);
    return jsonDecode2 as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> getUserDetails(String accessToken) async {
    const url = 'https://$auth0Domain/userinfo';
    final response = await http.get(
      Uri.parse(url),
      headers: <String, String>{'Authorization': 'Bearer $accessToken'},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception('Failed to get user details');
    }
  }

  Future<void> loginAction() async {
    _controller.add(AuthRepoloading());

    try {
      final result = await appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          auth0ClientId,
          auth0RedirectUri,
          issuer: 'https://$auth0Domain',
          scopes: <String>['openid', 'profile', 'offline_access'],
          additionalParameters: {'audience': 'http://localhost:5000'},
        ),
      );
      if (result != null &&
          result.idToken != null &&
          result.accessToken != null) {
        final idToken = parseIdToken(result.idToken!);
        final profile = await getUserDetails(result.accessToken!);
        await box.put('token', result.accessToken);

        await secureStorage.write(
          key: 'refresh_token',
          value: result.refreshToken,
        );

        _controller.add(
          AuthRepologgedIn(
            User(
              idToken['nickname'] as String? ?? '',
              profile['picture'] as String? ?? '',
            ),
          ),
        );
      } else {
        _controller
            .add(const AuthRepohasError('Code 3 Auth login response is null'));
      }
    } on Exception catch (e, s) {
      _controller.add(AuthRepohasError('Code 4 $e $s'));
    }
  }

  Future<void> logoutAction() async {
    await secureStorage.delete(key: 'refresh_token');
    _controller.add(AuthRepologgedOut());
  }

  void dispose() => _controller.close();
}
