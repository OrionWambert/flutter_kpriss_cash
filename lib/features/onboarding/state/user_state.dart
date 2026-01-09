import 'package:equatable/equatable.dart';
import 'package:finance_mobile_app/features/onboarding/domains/models/user.dart';

/// [UserState]
/// Les différents états de l'interface utilisateur.
enum UserStatus { initial, loading, success, failure }

final class UserState extends Equatable {
  const UserState({
    this.status = UserStatus.initial,
    this.user = User.empty,
    this.enteredName = '',
  });

  final UserStatus status;
  final User user;
  final String enteredName;

  UserState copyWith({
    UserStatus? status,
    User? user,
    String? enteredName,
  }) {
    return UserState(
      status: status ?? this.status,
      user: user ?? this.user,
      enteredName: enteredName ?? this.enteredName,
    );
  }

  @override
  List<Object> get props => [status, user, enteredName];
}

