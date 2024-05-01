class MockSpaceship implements Spacecraft {
  @override
  DateTime? launchDate;

  @override
  String name = "";

  @override
  void describe() {}

  @override
  void describeWithEmphasis() {}

  @override
  int? get launchYear => throw UnimplementedError();
}

abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('=========');
    describe();
    print('=========');
  }
}

class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Method.
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  MockSpaceship mockSpaceship = MockSpaceship();
  mockSpaceship.name = "MockSpaceship";
  mockSpaceship.launchDate = DateTime(2024, 5, 1);
  mockSpaceship.describe();
  mockSpaceship.describeWithEmphasis();
}