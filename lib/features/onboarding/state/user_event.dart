import 'package:equatable/equatable.dart';

/// [UserEvent]
/// Tous les événements possibles pouvant survenir dans cette fonctionnalité.
sealed class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

final class UserFetchRequested extends UserEvent {
  const UserFetchRequested();
}

final class UserNameChanged extends UserEvent {
  final String name;

  const UserNameChanged(this.name);

  @override
  List<Object> get props => [name];
}

final class UserNameConfirmed extends UserEvent {
  const UserNameConfirmed();
}

