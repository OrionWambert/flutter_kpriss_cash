import 'package:finance_mobile_app/features/notification/domains/models/notification_model.dart';
import 'package:finance_mobile_app/ui/core_components/interactive_wrapper.dart'
    show InteractiveWrapper;
import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key, required this.notification});

  final NotificationModel notification;

  String _formatTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inMinutes < 1) {
      return 'À l\'instant';
    } else if (difference.inMinutes < 60) {
      return 'Il y a ${difference.inMinutes} min';
    } else if (difference.inHours < 24) {
      return 'Il y a ${difference.inHours} h';
    } else if (difference.inDays < 7) {
      return 'Il y a ${difference.inDays} j';
    } else {
      final months = ['jan', 'fév', 'mar', 'avr', 'mai', 'jun', 'jul', 'aoû', 'sep', 'oct', 'nov', 'déc'];
      return '${dateTime.day} ${months[dateTime.month - 1]} ${dateTime.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InteractiveWrapper(
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFFAFF8C),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const Icon(
                Icons.notifications,
                color: Color(0xFF1A1C1E),
                size: 24,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF1A1C1E),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    notification.description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _formatTime(notification.receiveAt),
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

