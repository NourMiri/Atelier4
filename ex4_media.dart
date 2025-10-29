// Classe de base Media
class Media {
  final String titre;

  Media(this.titre);

  void afficherType() {
    print("Ceci est un média générique : $titre");
  }
}

// Classe Livre qui hérite de Media
class Livre extends Media {
  final String auteur;

  Livre(String titre, this.auteur) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un livre : \"$titre\" par $auteur");
  }
}

// Classe Film qui hérite de Media
class Film extends Media {
  final int dureeMinutes;

  Film(String titre, this.dureeMinutes) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un film : \"$titre\" (${dureeMinutes} min)");
  }
}

void main() {
  // Liste de médias
  final List<Media> catalogue = [
    Livre("Le Petit Prince", "Antoine de Saint-Exupéry"),
    Livre("Harry Potter", "J.K. Rowling"),
    Film("Inception", 148),
    Film("Avatar", 162),
  ];

  // Parcours de la liste et affichage des types
  for (var media in catalogue) {
    media.afficherType();
  }
}