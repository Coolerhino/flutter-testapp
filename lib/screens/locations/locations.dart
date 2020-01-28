import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children: locations
          .map((location) => GestureDetector(
            onTap: () => _onLocationTap(context, location.id),
            child: Container(child: Text(location.name))))
          .toList(),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationId){
    Navigator.pushNamed(context, LocationDetailRoute, arguments: {"id": locationId});
  }
}