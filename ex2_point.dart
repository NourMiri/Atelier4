class Point {
  // attributs privés
  final double _x, _y;

  // constructeur par défaut
  Point() : this.from(0, 0);

  // constructeur qui prend les coordonnées
  Point.from(this._x, this._y);

  // méthode d’affichage
  void display() => print('Point($_x, $_y)');
}

void main() {
  final p1 = Point.from(2, 5);
  final p2 = Point.from(3, -1);
  p1.display();
  p2.display();
}