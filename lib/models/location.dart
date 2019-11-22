import 'location_fact.dart';

class Location {
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location('Świdnik', 'assets/images/kiyomizu-dera.jpg', [
        LocationFact('Summary',
            'Świdnik – miasto we wschodniej Polsce, w województwie lubelskim, w powiecie świdnickim. 31 marca 2011 miał 40 710 mieszkańców.'),
        LocationFact(
            'Summary', 'W Świdniku zlokalizowany jest port lotniczy Lublin.')
      ]),
    ];
  }
}
