import 'package:flutter/material.dart';
import 'package:medications/src/api/api.dart';
import 'package:medications/src/api/urls.dart';
import 'package:medications/src/models/user_model.dart';

class AuthService {
  final String domain = 'djbnrrib9e.execute-api.us-east-2.amazonaws.com';

  Future<UserModel> signIn({
    @required String username,
    @required String password,
  }) async {
    assert(username != null);
    assert(password != null);
    var response = await api.post(ApiUrls.SIGNIN_URL, data: {
      'username': username,
      'password': password,
      'domain': this.domain
    });

    return UserModel(username: username, token: response.data['data']['token']);
  }
}
