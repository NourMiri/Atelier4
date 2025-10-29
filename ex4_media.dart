// Classe de base Media
class Media {
  final String titre;

  Media(this.titre);

  void afficherType() {
    print("Ceci est un m�dia g�n�rique : $titre");
  }
}

// Classe Livre qui h�rite de Media
class Livre extends Media {
  final String auteur;

  Livre(String titre, this.auteur) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un livre : \"$titre\" par $auteur");
  }
}

// Classe Film qui h�rite de Media
class Film extends Media {
  final int dureeMinutes;

  Film(String titre, this.dureeMinutes) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un film : \"$titre\" (${dureeMinutes} min)");
  }
}

void main() {
  // Liste de m�dias
  final List<Media> catalogue = [
    Livre("Le Petit Prince", "Antoine de Saint-Exup�ry"),
    Livre("Harry Potter", "J.K. Rowling"),
    Film("Inception", 148),
    Film("Avatar", 162),
  ];

  // Parcours de la liste et affichage des types
  for (var media in catalogue) {
    media.afficherType();
  }
}