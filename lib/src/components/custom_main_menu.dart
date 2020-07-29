import 'package:flutter/material.dart';
import 'package:medications/src/controllers/auth_controller.dart';
import 'package:medications/src/pages/home_page.dart';
import 'package:medications/src/pages/medication_page.dart';
import 'package:provider/provider.dart';

import 'custom_menu_item.dart';
import 'custom_user_accounts_drawer_head.dart';

class CustomMainMenu extends StatefulWidget {
  CustomMainMenu();

  @override
  _CustomMainMenuState createState() => _CustomMainMenuState();
}

class _CustomMainMenuState extends State<CustomMainMenu> {
  _CustomMainMenuState();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          CustomUserAccontsDrawerHead(),
          CustomMenuItem(
              text: 'Início',
              icon: Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              }),
          CustomMenuItem(
              text: 'Medicamentos',
              icon: Icon(Icons.enhanced_encryption),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MedicationPage()));
              }),
          CustomMenuItem(
              text: 'Sair', icon: Icon(Icons.exit_to_app), onTap: _logout),
        ],
      ),
    );
  }

  _logout() async {
    final _authController = Provider.of<AuthController>(context, listen: false);
    await _authController.signOut(context);
  }
}
