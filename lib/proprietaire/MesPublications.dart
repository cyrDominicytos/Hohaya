import 'package:flutter/material.dart';
import 'package:hohaya/screen/PublicationCategorie.dart';

class MesPublications extends StatefulWidget {
  @override
  _MesPublicationsState createState() => _MesPublicationsState();
}

class _MesPublicationsState extends State<MesPublications> {
  @override
  Widget build(BuildContext context) {
    return PublicationCategorie(type: 1);
  }
}
