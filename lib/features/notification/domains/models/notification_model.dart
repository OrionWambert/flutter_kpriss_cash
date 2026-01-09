import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';

@freezed
abstract class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required String title,
    required String description,
    required DateTime receiveAt,
  }) = _NotificationModel;
}
