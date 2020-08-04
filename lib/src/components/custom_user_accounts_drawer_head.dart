import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:medications/src/controllers/auth_controller.dart';
import 'package:provider/provider.dart';

class CustomUserAccontsDrawerHead extends StatelessWidget {
  CustomUserAccontsDrawerHead();

  @override
  Widget build(BuildContext context) {
    final _authController = Provider.of<AuthController>(context, listen: false);
    return UserAccountsDrawerHeader(
      currentAccountPicture:
          CircleAvatar(backgroundImage: AssetImage('assets/images/avatar.png')),
      accountName: Observer(builder: (context) {
        return Text(
            _authController.authUser != null
                ? _authController.authUser.username
                : 'Usuário não encontrado',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ));
      }),
      decoration: BoxDecoration(
        color: Color.fromRGBO(122, 44, 150, 1),
      ),
      onDetailsPressed: () {},
      accountEmail: null,
    );
  }
}
