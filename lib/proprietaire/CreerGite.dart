import 'package:flutter/material.dart';

class CeerGite extends StatefulWidget {
  @override
  _CeerGiteState createState() => _CeerGiteState();
}

class _CeerGiteState extends State<CeerGite> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 62),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: 45,
            padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                hintText: 'Type',
              ),
            ),
          ), //Nom

          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: 45,
            margin: EdgeInsets.only(top: 32),
            padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.person_add,
                  color: Colors.grey,
                ),
                hintText: 'Prénom',
              ),
            ),
          ), //Prenom

          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: 45,
            margin: EdgeInsets.only(top: 32),
            padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                hintText: 'Email ou Téléphone',
              ),
            ),
          ), //Email ou téléphone

          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: 45,
            margin: EdgeInsets.only(top: 32),
            padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.vpn_key,
                  color: Colors.grey,
                ),
                hintText: 'Mot de passe',
              ),
            ),
          ), //Mot de passe

          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: 45,
            margin: EdgeInsets.only(top: 32),
            padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.vpn_key,
                  color: Colors.grey,
                ),
                hintText: 'Confirmer Mot de passe',
              ),
            ),
          ), //Mot de passe confirme
          SizedBox(
            height: 30,
          ),
          Container(
            height: 45,
            width: MediaQuery.of(context).size.width / 1.2,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(143, 148, 251, 1),
                    Color.fromRGBO(143, 148, 251, .6),
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Center(
              child: Text(
                'S\'inscrire'.toUpperCase(),
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("/Loginform", arguments: 1);
            },
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "J\'ai un compte ",
                  style: TextStyle(color: Colors.grey, fontSize: 18.0)),
              TextSpan(
                  text: "Se connecter",
                  style: TextStyle(
                      color: Color.fromRGBO(143, 148, 251, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0)),
            ])),
          )
        ],
      ),
    );
  }
}
