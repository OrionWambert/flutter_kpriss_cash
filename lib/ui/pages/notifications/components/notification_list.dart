import 'package:finance_mobile_app/features/notification/state/notification_state.dart'
    show NotificationCubit, NotificationState, NotificationLoading, NotificationError, NotificationLoaded;
import 'package:finance_mobile_app/ui/pages/notifications/components/notification_item.dart'
    show NotificationItem;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationCubit, NotificationState>(
      builder: (context, state) {
        if (state is NotificationLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is NotificationError) {
          return Center(child: Text(state.message));
        } else if (state is NotificationLoaded) {
          if (state.notifications.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications_off,
                    size: 64,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Aucune notification',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
            itemCount: state.notifications.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final notification = state.notifications[index];
              return NotificationItem(notification: notification);
            },
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

