import 'package:finance_mobile_app/dependency_injection.dart';
import 'package:finance_mobile_app/features/notification/state/notification_state.dart'
    show NotificationCubit;
import 'package:finance_mobile_app/ui/pages/notifications/view.dart'
    show NotificationView;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationPage extends StatelessWidget {
  static final String routeName = '/notifications';

  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<NotificationCubit>()..loadNotifications(),
      child: const NotificationView(),
    );
  }
}
