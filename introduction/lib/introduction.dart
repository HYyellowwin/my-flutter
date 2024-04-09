/// Support for doing something awesome.
///
/// More dartdocs go here.
library introduction;

export 'src/introduction_base.dart';

// TODO: Export any libraries intended for clients of this package.
import 'dart:math';
import 'package:introduction/introduction.dart';

void main(){
  print('Hello World!');

  var name='Voyager I';
  var year=1977;
  var antennaDiameter=3.7;
  var flybyObjiects=['Jupiter','Saturn','Uranus','Neptune'];
  var image={
    'tag':['saturn'],
    'url':'//path/to/saturn.jpg'
  };

  int function(){
    if(year>=2001){
      print('21st century');
    } else if(year>1901){
      print('20th century');
    }

    for(final object in flybyObjiects){
      print(object);
    }

    for(int month=1; month<=12; month++){
      print(month);
    }

    while(year<2016){
      year += 1;
    }

    return 0;
  }

  //flybyObjects.where((name) => name.contains('turn')).forEach(print);

  var voyager=Spacecraft('Voyager I', DateTime(1977,9,5));
  voyager.describe();

  
}


class Spacecraft {
  String name;
  DateTime? launchDate;

  int? get launchYear => launchDate?.year;

  Spacecraft(this.name, this.launchDate){
    name=this.name;
    launchDate=this.launchDate;
  }

  //Spacecraft.unlaunched(String name) : this(name,null);

  //Method
  void describe(){
    print('Spacecraft:$name');
    var launchDate=this.launchDate;
    if(launchDate!=null){
      int years=DateTime.now().difference(launchDate).inDays~/365;
      print('Launched:$launchYear($years years ago)');
    }else{
      print('Unlaunched');
    }
  }

}

// enum Planet {
//   mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
//   venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
//   // ···
//   uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
//   neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

//   const Planet(
//     required this.planetType, required this.moos, required this.hasRings});

//   final PlanetType planetType;
//   final int moons;
//   final bool hasRings;

//   bool get isGiant =>
//       planetType == PlanetType.gas || planetType == PlanetType.ice;

// }

class Orbiter extends Spacecraft{
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

mixin Piloted{
  int astronauts=1;

  void describeCtew(){
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted{
  PilotedCraft(super.name, super.launchDate){
    print("jiujiang");
  }
  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class MockSpaceship implements Spacecraft{
  @override
  DateTime? launchDate;

  @override
  late String name;

  @override
  void describe() {
    // TODO: implement describe
  }

  @override
  // TODO: implement launchYear
  int? get launchYear => throw UnimplementedError();
  
  
}
