// Classe abstraite
abstract class Forme {
  double calculerAire();                         // méthode obligatoire
  void afficherMessage() => print("Calcul de l'aire...");
}

// Cercle hérite de Forme
class Cercle extends Forme {
  final double rayon;
  Cercle(this.rayon);

  @override
  double calculerAire() => 3.141592653589793 * rayon * rayon;
}

// Rectangle hérite de Forme
class Rectangle extends Forme {
  final double longueur, largeur;
  Rectangle(this.longueur, this.largeur);

  @override
  double calculerAire() => longueur * largeur;
}

void main() {
  final c = Cercle(3.0);
  final r = Rectangle(4.0, 2.5);

  c.afficherMessage();
  print("Aire du cercle = ${c.calculerAire()}");

  r.afficherMessage();
  print("Aire du rectangle = ${r.calculerAire()}");
}