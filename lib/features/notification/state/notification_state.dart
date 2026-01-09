import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:finance_mobile_app/features/notification/domains/models/notification_model.dart';
import 'package:finance_mobile_app/features/notification/domains/repository/notification_repository.dart';

abstract class NotificationState extends Equatable {
  const NotificationState();

  @override
  List<Object> get props => [];
}

class NotificationInitial extends NotificationState {}

class NotificationLoading extends NotificationState {}

class NotificationLoaded extends NotificationState {
  final List<NotificationModel> notifications;

  const NotificationLoaded(this.notifications);

  @override
  List<Object> get props => [notifications];
}

class NotificationError extends NotificationState {
  final String message;

  const NotificationError(this.message);

  @override
  List<Object> get props => [message];
}

class NotificationCubit extends Cubit<NotificationState> {
  final NotificationRepository _repository;

  NotificationCubit({required NotificationRepository repository})
      : _repository = repository,
        super(NotificationInitial());

  Future<void> loadNotifications() async {
    emit(NotificationLoading());
    try {
      final notifications = await _repository.getNotifications();
      emit(NotificationLoaded(notifications));
    } catch (e) {
      emit(const NotificationError("Failed to fetch notifications"));
    }
  }
}

