import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:finance_mobile_app/features/onboarding/domains/repository/user_repository.dart';
import 'package:finance_mobile_app/features/onboarding/state/user_event.dart';
import 'package:finance_mobile_app/features/onboarding/state/user_state.dart';

/// [UserBloc]
/// Gère la logique métier. Reçoit des Events -> Émet des States.
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const UserState()) {
    on<UserFetchRequested>(_onUserFetchRequested);
    on<UserNameChanged>(_onUserNameChanged);
    on<UserNameConfirmed>(_onUserNameConfirmed);
  }

  final UserRepository _userRepository;

  Future<void> _onUserFetchRequested(
    UserFetchRequested event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(status: UserStatus.loading));
    try {
      final user = await _userRepository.getUser();
      emit(state.copyWith(
        status: UserStatus.success,
        user: user,
      ));
    } catch (_) {
      emit(state.copyWith(status: UserStatus.failure));
    }
  }

  void _onUserNameChanged(
    UserNameChanged event,
    Emitter<UserState> emit,
  ) {
    emit(state.copyWith(enteredName: event.name));
  }

  Future<void> _onUserNameConfirmed(
    UserNameConfirmed event,
    Emitter<UserState> emit,
  ) async {
    // Ici on pourrait sauvegarder le nom saisi
    // Pour l'instant, on garde juste l'état
    debugPrint("Name Confirmed: ${state.enteredName}");
  }
}

