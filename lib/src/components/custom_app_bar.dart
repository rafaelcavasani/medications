import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  final List<Widget> actions;
  final Widget title;

  CustomAppBar({this.actions, this.title});

  @override
  _CustomAppBarState createState() =>
      _CustomAppBarState(actions: actions, title: title);

  @override
  Size get preferredSize => Size.fromHeight(60);
}

class _CustomAppBarState extends State<CustomAppBar> {
  final List<Widget> actions;
  final Widget title;

  _CustomAppBarState({this.actions, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(122, 44, 150, 1),
      centerTitle: true,
      title: title ?? Text('Medicamentos App'),
      actions: actions,
    );
  }
}
