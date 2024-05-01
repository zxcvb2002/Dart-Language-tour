void main() {
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  print('Name: $name');
  print('Year: $year');
  print('Antenna Diameter: $antennaDiameter meters');
  print('Flyby Objects: $flybyObjects');
  print('Image Tags: ${image['tags']}');
  print('Image URL: ${image['url']}');
}