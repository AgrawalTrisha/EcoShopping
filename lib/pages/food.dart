class Food {
  String name;
  int percentage;

  Food(String n, int p) {name = n; percentage = p;}
}

class PerishFood extends Food {
  DateTime expiration;

  PerishFood(String n, int p, Duration t) : super(n, p) {
    expiration = new DateTime.now().add(t);
  }

  bool expiresSoon(Duration soon) => soon <= expiration.difference(new DateTime.now());
}