class Couleur {
  int r, g, b;

  Couleur() : this.param(0, 0, 0);
  Couleur.param(int r, int g, int b)
      : r = r.clamp(0, 255),
        g = g.clamp(0, 255),
        b = b.clamp(0, 255);

  // usines nommées
  Couleur.rouge() : this.param(255, 0, 0);
  Couleur.vert()  : this.param(0, 255, 0);
  Couleur.bleu()  : this.param(0, 0, 255);

  void afficherCouleur() => print('Couleur RGB($r, $g, $b)');
}

void main() {
  final c1 = Couleur.rouge();
  final c2 = Couleur.vert();
  final c3 = Couleur.bleu();
  c1.afficherCouleur();
  c2.afficherCouleur();
  c3.afficherCouleur();
}