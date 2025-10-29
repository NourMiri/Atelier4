// Contrat (interface) via abstract class
abstract class Connectable {
  void connecter(String utilisateur);
  void deconnecter();
}

class ServeurAPI implements Connectable {
  bool _connecte = false;

  @override
  void connecter(String utilisateur) {
    _connecte = true;
    print('ServeurAPI : Connexion �tablie pour $utilisateur');
  }

  @override
  void deconnecter() {
    _connecte = false;
    print('ServeurAPI : D�connexion r�ussie.');
  }
}

class BaseDeDonnees implements Connectable {
  bool _connecte = false;

  @override
  void connecter(String utilisateur) {
    _connecte = true;
    print('BaseDeDonnees : Connexion �tablie pour $utilisateur');
  }

  @override
  void deconnecter() {
    _connecte = false;
    print('BaseDeDonnees : D�connexion r�ussie.');
  }
}

void main() {
  final services = <Connectable>[
    ServeurAPI(),
    BaseDeDonnees(),
  ];

  for (final s in services) {
    s.connecter('user1');
  }
  for (final s in services) {
    s.deconnecter();
  }
}