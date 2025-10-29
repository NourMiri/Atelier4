class Tache {
  String description;
  static int nombreTotal = 0; // compteur partagé par toutes les instances

  Tache(this.description) {
    nombreTotal++;
  }
}

void main() {
  Tache('Lire chapitre 1');
  Tache('Envoyer email');
  Tache('Faire exo 7');

  print('Tache.nombreTotal = ${Tache.nombreTotal}');
}