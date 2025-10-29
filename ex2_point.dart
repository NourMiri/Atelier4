class Point {
  // attributs priv�s
  final double _x, _y;

  // constructeur par d�faut
  Point() : this.from(0, 0);

  // constructeur qui prend les coordonn�es
  Point.from(this._x, this._y);

  // m�thode d�affichage
  void display() => print('Point($_x, $_y)');
}

void main() {
  final p1 = Point.from(2, 5);
  final p2 = Point.from(3, -1);
  p1.display();
  p2.display();
}