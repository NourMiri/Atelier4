class Compte {
  double _solde;                 // solde priv�
  final String numeroCompte;     // num�ro immuable

  // constructeur principal + version simplifi�e (solde = 0.0 par d�faut)
  Compte(this.numeroCompte, [double solde = 0.0]) : _solde = solde;

  // getter
  double get solde => _solde;

  // d�p�t
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