main(List<String> args) {
  var bike = Bicycle(3, 0);
  print(bike);

  bike.speedUp(20);

  print(bike);
   
   bike.applyBrake(10);

   print(bike);

   bike.applyBrake(30);
}

class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;

  
  Bicycle(this.cadence, this.gear);

  applyBrake(int decrement) {
    _speed = _speed - decrement < 0 ? 0 : _speed - decrement;
  }

  speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $speed kmh';
}
