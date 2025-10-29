class Compte {
  double _solde;                 // solde privé
  final String numeroCompte;     // numéro immuable

  // constructeur principal + version simplifiée (solde = 0.0 par défaut)
  Compte(this.numeroCompte, [double solde = 0.0]) : _solde = solde;

  // getter
  double get solde => _solde;

  // dépôt
  void depot(double montant) {
    if (montant <= 0) {
      print('Montant invalide.');
      return;
    }
    _solde += montant;
  }

  // affichage
  void afficher() =>
      print('Compte $numeroCompte | Solde: ${_solde.toStringAsFixed(2)} \$');
}

void main() {
  final c = Compte('A-001'); // solde initial 0.0
  c.afficher();
  c.depot(150.0);
  c.afficher();
}