import 'package:flutter/material.dart';
import 'package:medications/src/components/custom_app_bar.dart';
import 'package:medications/src/components/custom_main_menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomMainMenu(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
                  child: SizedBox(
                    width: 250,
                    height: 150,
                    child: Image.asset('assets/images/icon.png'),
                  )),
              Divider(
                height: 40,
                color: Colors.transparent,
              ),
              Text(
                'Bem vindo!!!',
                style: TextStyle(fontSize: 24),
              ),
              Divider(
                height: 80,
                color: Colors.transparent,
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Este é um aplicativo para busca de medicamentos.',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
              Divider(
                height: 80,
                color: Colors.transparent,
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Desenvolvido por Rafael Cavasani',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
