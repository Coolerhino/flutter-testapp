import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Świdnik', 'assets/images/kiyomizu-dera.jpg', [
        LocationFact('Summary',
            'Świdnik – miasto we wschodniej Polsce, w województwie lubelskim, w powiecie świdnickim. 31 marca 2011 miał 40 710 mieszkańców.'),
        LocationFact(
            'Summary', 'W Świdniku zlokalizowany jest port lotniczy Lublin.')
      ]),
      Location(2, 'Lublin', 'assets/images/arashiyama.jpg', [
        LocationFact('Summary',
            'Lublin, miasto uniwesyteckie'),
        LocationFact(
            'Summary', 'Nic tu nie ma poza nimi')
      ]),
      Location(3, 'Rozkopaczew', 'assets/images/fuji.jpg', [
        LocationFact('Summary',
            'No wieś jest i jeziorko'),
        LocationFact(
            'Summary', 'Fajnie jest')
      ]),
    ];
  }

  static Location fetchById(int locationId){
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationId) {
        return locations[i];
      }
    }
    return null;
/*    return locations.firstWhere((l) => l.id == locationId,
        orElse: () => null);*/
  }
}
