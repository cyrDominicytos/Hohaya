import 'package:flutter/material.dart';

class CreerGites extends StatefulWidget {
  @override
  _CreerGitesState createState() => _CreerGitesState();
}

class _CreerGitesState extends State<CreerGites> {
  var selectedCurrency, selectedType;
  var selectedCategorieCurrency, selectedCategorireType;
  final GlobalKey<FormState> _formKeyValue = new GlobalKey<FormState>();
  List<String> _logementType = <String>['Chambres', 'Appartement', 'Résidence'];
  List<String> _logementCategorie = <String>['Ordinaire', 'Sanitaire'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Hôhaya",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          // backgroundColor: ,
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
        body: Form(
          key: _formKeyValue,
          autovalidate: true,
          child: new ListView(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            children: <Widget>[
              SizedBox(height: 20.0),
              Center(
                child: Text(
                  "Détails du logement",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  DropdownButton(
                    items: _logementType
                        .map((value) => DropdownMenuItem(
                              child: Text(
                                value,
                                style: TextStyle(color: Colors.blue),
                              ),
                              value: value,
                            ))
                        .toList(),
                    onChanged: (selectedAccountType1) {
                      print('$selectedAccountType1');
                      setState(() {
                        selectedType = selectedAccountType1;
                      });
                    },
                    value: selectedType,
                    isExpanded: false,
                    hint: Text(
                      'Choisissez le Type de logement',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  DropdownButton(
                    items: _logementCategorie
                        .map((value) => DropdownMenuItem(
                              child: Text(
                                value,
                                style: TextStyle(color: Colors.blue),
                              ),
                              value: value,
                            ))
                        .toList(),
                    onChanged: (selectedAccountType) {
                      print('$selectedAccountType');
                      setState(() {
                        selectedCategorireType = selectedAccountType;
                      });
                    },
                    value: selectedType,
                    isExpanded: false,
                    hint: Text(
                      'Choisissez la catégorie de logement',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  new Flexible(
                    child: new TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Nombre',
                          labelText: 'Nombre de Chambre',
                        ),
                        keyboardType: TextInputType.number),

                  ),
                  new Flexible(
                    child: new TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Nombre',
                          labelText: 'Nombre de Cuisine',
                        ),
                        keyboardType: TextInputType.number),
                  )

                ],
              ),
              Row(
                children: <Widget>[
                  new Flexible(
                    child: new TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Nombre',
                          labelText: 'Nombre de salle de bain',
                        ),
                        keyboardType: TextInputType.number),
                  ),
                  new Flexible(
                    child: new TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Prix',
                          labelText: 'prix',
                        ),
                        keyboardType: TextInputType.number),
                  )

                ],
              ),




              SizedBox(height: 20.0),
              SizedBox(height: 40.0),

              SizedBox(
                height: 150.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Suivant", style: TextStyle(fontSize: 24.0)),
                            ],
                          )),
                      onPressed: () {},
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0))),
                ],
              ),
            ],
          ),
        ));
  }
}
