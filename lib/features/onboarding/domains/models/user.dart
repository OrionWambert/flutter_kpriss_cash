import 'package:equatable/equatable.dart';

/// [User] Model
/// Modèle de domaine pur représentant un utilisateur.
/// Utilise Equatable pour faciliter la comparaison d'objets.
class User extends Equatable {
  const User({required this.id, required this.name, required this.email});

  final String id;
  final String name;
  final String email;

  /// Exemple de factory pour créer un utilisateur vide
  static const empty = User(id: '-', name: '-', email: '-');

  @override
  List<Object> get props => [id, name, email];
}

