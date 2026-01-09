import 'package:finance_mobile_app/features/onboarding/domains/models/user.dart';

/// [UserDataSource] interface
/// Définit le contrat pour récupérer les données brutes (API, DB locale, etc.).
abstract class UserAbstractDataSource {
  Future<User> fetchUser();
}

