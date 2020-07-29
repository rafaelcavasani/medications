import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medications/src/models/user_model.dart';
import 'package:medications/src/pages/login_page.dart';
import 'package:medications/src/services/auth_service.dart';
import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

class AuthController = AuthControllerBase with _$AuthController;

abstract class AuthControllerBase with Store {
  @observable
  UserModel authUser;
  @observable
  bool isLoading = false;
  @observable
  Exception error;

  var logger = Logger(
    printer: PrettyPrinter(),
  );

  final _authService = AuthService();

  @action
  Future<void> setLoading(bool loading) async {
    this.isLoading = loading;
  }

  @action
  Future<void> signIn(String username, String password) async {
    try {
      this.isLoading = true;
      this.error = null;
      this.authUser =
          await _authService.signIn(username: username, password: password);
      this.isLoading = false;
      this.logger.i('User $username signed in');
    } catch (e) {
      this.logger.e(e.toString());
      this.isLoading = false;
      this.error = e;
      this.authUser = null;
    }
  }

  @action
  Future<void> signOut(BuildContext context) async {
    this.logger.i('User ${this.authUser.username} signed out');
    this.authUser = null;
    this.isLoading = false;
    this.error = null;
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);
  }

  dispose() {}
}
