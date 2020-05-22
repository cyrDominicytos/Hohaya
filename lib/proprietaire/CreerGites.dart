import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreerGites extends StatefulWidget {
  @override
  _CreerGitesState createState() => _CreerGitesState();
}

class _CreerGitesState extends State<CreerGites> {
  var selectedCurrency, selectedType, selectedVille, selectedQuartier,
      selectedZone;
  var _selectedType, _selectedVille, _selectedQuartier, _selectedZone;
  final GlobalKey<FormState> _formKeyType = new GlobalKey<FormState>();

  List<String> _logementType = <String>['Chambres', 'Appartement', 'Résidence'];
  List<String> _listVille = <String>['Cotonou'];
  List<String> _listQuartier = <String>[
    'Cadjèhoun',
    'Gbégamey',
    'Vodjè',
    'Agla',
    'Akpakpa'
  ];
  List<String> _listZone = <String>[
    'Cadjèhoun 1 ',
    'Cadjèhoun 2',
    'Vodjè Sona'
  ];

  //Radio button manager
  int _radioValue,
      _radioValue2 = 0;



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
          key: _formKeyType,
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

              Padding(
                padding: EdgeInsets.only(left: 200, right: 200),
                child: DropdownButton(
                  items: _logementType
                      .map((value) =>
                      DropdownMenuItem(
                        child: Center(
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        value: value,
                      ))
                      .toList(),
                  onChanged: (selectedType) {
                    print('$selectedType');
                    setState(() {
                      _selectedType = selectedType;
                    });
                  },
                  value: selectedType,
                  isExpanded: false,
                  hint: Text(
                    'Type de logement',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
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
                  SizedBox(width: 20.0),
                  new Flexible(
                    child: new TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Nombre',
                          labelText: 'Nombre de Cuisine',
                        ),
                        keyboardType: TextInputType.number),
                  )
                  ,
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
                  SizedBox(width: 20.0),
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
              SizedBox(height: 10.0),
              Center(
                child: Text(
                  "Confort du logement",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  new Text('Ordinaire'),
                  SizedBox(width: 100.0),

                  new Radio(
                    value: 1,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  new Text('Sanitaire'),
                ],
              ),
              SizedBox(height: 10.0),
              Center(
                child: Text(
                  "Logement disponible pour",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: _radioValue2,
                    onChanged: _handleRadioValueChange2,
                  ),
                  new Text('Location'),
                  SizedBox(width: 100.0),

                  new Radio(
                    value: 1,
                    groupValue: _radioValue2,
                    onChanged: _handleRadioValueChange2,
                  ),
                  new Text('Réservation'),
                ],
              ),
              SizedBox(height: 30.0),
              Center(
                child: Text(
                  "Localisation du logement",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.0),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: DropdownButton(
                        items: _listVille
                            .map((value) =>
                            DropdownMenuItem(
                              child: Center(
                                child: Text(
                                  value,
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                              value: value,
                            ))
                            .toList(),
                        onChanged: (selectedAccountType) {
                          print('$selectedAccountType');
                          setState(() {
                            _selectedVille = selectedAccountType;
                          });
                        },
                        value: selectedType,
                        isExpanded: true,
                        hint: Text(
                          'Ville',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: DropdownButton(
                        items: _listQuartier
                            .map((value) =>
                            DropdownMenuItem(
                              child: Center(
                                child: Text(
                                  value,
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                              value: value,
                            ))
                            .toList(),
                        onChanged: (selectedAccountType) {
                          print('$selectedAccountType');
                          setState(() {
                            _selectedQuartier = selectedAccountType;
                          });
                        },
                        value: selectedType,
                        isExpanded: true,
                        hint: Text(
                          'Quartier',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: DropdownButton(
                        items: _listZone
                            .map((value) =>
                            DropdownMenuItem(
                              child: Center(
                                child: Text(
                                  value,
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                              value: value,
                            ))
                            .toList(),
                        onChanged: (selectedAccountType) {
                          print('$selectedAccountType');
                          setState(() {
                            _selectedZone = selectedAccountType;
                          });
                        },
                        value: selectedType,
                        isExpanded: true,
                        hint: Text(
                          'Zone',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
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
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                      "/CreerGitesPage2");
                                },
                                child: Text("Suivants", style: TextStyle(
                                    fontSize: 24.0)),
                              )

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

  void _handleRadioValueChange2(int value) {
    setState(() {
      _radioValue2 = value;
    });
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
    });

    print(value);
  }
}
