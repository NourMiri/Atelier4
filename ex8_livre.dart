class Livre {
  String titre, auteur;
  int _pages = 0;                      // priv�
  static int totalLivres = 0;          // compteur partag�

  Livre(this.titre, this.auteur) {
    totalLivres++;
  }

  set pages(int v) => _pages = v;

  void afficherInfos() {
    final extra = _pages > 0 ? ', Pages: $_pages' : '';
    print('Livre � Titre: $titre, Auteur: $auteur$extra');
  }

  static void afficherTotal() =>
      print('Total de livres: $totalLivres');
}

class Roman extends Livre {
  String genre;
  Roman(String titre, String auteur, this.genre) : super(titre, auteur);

  @override
  void afficherInfos() {
    print('Roman � Titre: $titre, Auteur: $auteur, Genre: $genre');
  }
}

void main() {
  // 2 livres "simples"
  final l1 = Livre('Le Petit Prince', 'A. de Saint-Exup�ry')..pages = 200;
  final l2 = Livre('Pens�es', 'Blaise Pascal');

  l1.afficherInfos();
  l2.afficherInfos();

  // 2 romans (h�ritage)
  final r1 = Roman('Sherlock Holmes', 'Arthur Conan Doyle', 'Policier');
  final r2 = Roman('Orgueil et Pr�jug�s', 'Jane Austen', 'Romance');

  r1.afficherInfos();
  r2.afficherInfos();

  // compteur statique
  Livre.afficherTotal();
}