import 'package:flutter/material.dart';
import 'package:hohaya/Animation/FadeAnimation.dart';

class Sign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Hôhaya",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(143, 148, 251, 1),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 36.0,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/login/background.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(
                            1,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/login/light-1.png'))),
                            )),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1.3,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/login/light-2.png'))),
                            )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1.5,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/login/clock.png'))),
                            )),
                      ),
                      Positioned(
                        child: FadeAnimation(
                            1.6,
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Center(
                                child: Text(
                                  "Créer un compte",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 62),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: 45,
                        padding: EdgeInsets.only(
                            top: 4, left: 16, right: 16, bottom: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 5)
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            hintText: 'Nom',
                          ),
                        ),
                      ), //Nom

                      Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: 45,
                        margin: EdgeInsets.only(top: 32),
                        padding: EdgeInsets.only(
                            top: 4, left: 16, right: 16, bottom: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 5)
                            ]),
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
                        padding: EdgeInsets.only(
                            top: 4, left: 16, right: 16, bottom: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 5)
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.email,
                              color: Colors.grey,
                            ),
                            hintText: 'Email ou Téléphone',
                          ),
                            keyboardType: TextInputType.emailAddress
                        ),
                      ), //Email ou téléphone
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 1.2,
                        height: 45,
                        margin: EdgeInsets.only(top: 32),
                        padding: EdgeInsets.only(
                            top: 4, left: 16, right: 16, bottom: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 5)
                            ]),
                        child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                Icons.phone,
                                color: Colors.grey,
                              ),
                              hintText: 'Téléphone',

                            ),
                            keyboardType: TextInputType.number
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: 45,
                        margin: EdgeInsets.only(top: 32),
                        padding: EdgeInsets.only(
                            top: 4, left: 16, right: 16, bottom: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 5)
                            ]),
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
                        padding: EdgeInsets.only(
                            top: 4, left: 16, right: 16, bottom: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 5)
                            ]),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Center(
                          child: Text(
                            'S\'inscrire'.toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                              "/Loginform", arguments: 1);
                        },
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "J\'ai un compte ",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 18.0)),
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
                )
              ],
            ),
          ),
        ));
  }
}
