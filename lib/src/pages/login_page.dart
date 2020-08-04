import 'package:flutter/material.dart';
import 'package:medications/src/components/custom_alert.dart';
import 'package:medications/src/components/custom_raised_button.dart';
import 'package:medications/src/components/custom_text_field.dart';
import 'package:medications/src/controllers/auth_controller.dart';
import 'package:medications/src/pages/home_page.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Color.fromRGBO(122, 44, 150, 1)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ModalProgressHUD(
            inAsyncCall: Provider.of<AuthController>(context).isLoading,
            child: Container(
                child: SingleChildScrollView(
              child: new Theme(
                  data: new ThemeData(
                    primaryColor: Colors.white,
                    primaryColorDark: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
                          child: SizedBox(
                            width: 250,
                            height: 150,
                            child: Image.asset('assets/images/avatar.png'),
                          )),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 50, left: 20, right: 20, bottom: 20),
                        child: CustomTextField(
                          labelText: 'Usuário',
                          controller: _usernameController,
                          prefixIcon: Icon(
                            Icons.perm_identity,
                            color: Color.fromRGBO(230, 235, 241, 1),
                          ),
                          labelStyle: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromRGBO(220, 220, 220, 1)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: CustomTextField(
                          labelText: 'Senha',
                          controller: _passwordController,
                          obscuredText: true,
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Color.fromRGBO(230, 235, 241, 1),
                          ),
                          labelStyle: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromRGBO(220, 220, 220, 1)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 70, 20, 0),
                        child: CustomRaisedButton(
                          text: 'LOGIN',
                          fontWeight: FontWeight.bold,
                          onPressed: _btnLoginPressed,
                        ),
                      ),
                    ],
                  )),
            )),
          ),
        ));
  }

  _btnLoginPressed() async {
    final _authController = Provider.of<AuthController>(context, listen: false);
    await _authController.setLoading(true);
    final String username = _usernameController.text;
    final String password = _passwordController.text;
    await _authController.signIn(username, password);
    if (_authController.authUser != null) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => HomePage()));
    } else {
      await _authController.setLoading(false);
      CustomAlert.buildShowDialog(
        context: context,
        title: 'Erro ao realizar o login',
        text: 'Usuário e senha inválidos.',
        buttonText: 'OK',
      );
    }
  }
}
