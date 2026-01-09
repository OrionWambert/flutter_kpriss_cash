import 'package:finance_mobile_app/features/onboarding/data/datasources/user_abstract_datasource.dart';
import 'package:finance_mobile_app/features/onboarding/domains/models/user.dart';

/// [RemoteUserDataSource] implementation
/// Simulation d'un appel API.
class UserRemoteDataSource implements UserAbstractDataSource {
  @override
  Future<User> fetchUser() async {
    // Simule une latence réseau
    await Future.delayed(const Duration(seconds: 1));
    return const User(
      id: '123',
      name: 'Jean Dupont',
      email: 'jean.dupont@vgv.demo',
    );
  }
}

