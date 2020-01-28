import 'package:flutter/material.dart';
import '../home/image_banner.dart';
import '../home/text_section.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationId;

  LocationDetail(this._locationId);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(_locationId);

    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner(location.imagePath),
            ]..addAll(textSections(location)))
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
