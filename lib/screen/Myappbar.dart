import 'package:flutter/material.dart';

class Myappbar extends StatefulWidget {
  @override
  _MyappbarState createState() => _MyappbarState();
}

class _MyappbarState extends State<Myappbar> {
  String _connexionBtn = "Connexion";
  Color _loginBtnColor = Colors.blue;
  int i = 0;

  void changeLoginBtnText() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
            size: 36.0,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed("/QuickSearchPage");
          },
        )
      ],
    );
  }
}
