import 'package:flutter/material.dart';
import 'package:medications/src/controllers/auth_controller.dart';
import 'package:medications/src/pages/home_page.dart';
import 'package:medications/src/pages/login_page.dart';
import 'package:provider/provider.dart';
import 'models/user_model.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthController>(
            create: (_) => AuthController(),
            dispose: (_, controller) => controller.dispose())
      ],
      child: MaterialApp(
        title: 'Medications App',
        home: HomePageApp(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class HomePageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserModel user =
        Provider.of<AuthController>(context, listen: false).authUser;
    return user != null ? HomePage() : LoginPage();
  }
}
