import 'package:finance_mobile_app/features/onboarding/data/datasources/user_abstract_datasource.dart';
import 'package:finance_mobile_app/features/onboarding/domains/models/user.dart';

/// [UserRepository]
/// Le Repository agit comme une abstraction. La couche BLoC ne parle qu'au Repository,
/// jamais directement à la source de données.
class UserRepository {
  const UserRepository({required UserAbstractDataSource dataSource})
      : _dataSource = dataSource;

  final UserAbstractDataSource _dataSource;

  Future<User> getUser() async {
    try {
      return await _dataSource.fetchUser();
    } catch (_) {
      throw Exception('Erreur lors de la récupération de l\'utilisateur');
    }
  }
}

