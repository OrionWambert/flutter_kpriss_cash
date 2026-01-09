import 'package:finance_mobile_app/ui/core_components/background_gradient.dart'
    show BackgroundGradient;
import 'package:finance_mobile_app/ui/core_components/entrance_animation.dart'
    show EntranceAnimation;
import 'package:finance_mobile_app/ui/pages/notifications/components/notification_header.dart'
    show NotificationHeader;
import 'package:finance_mobile_app/ui/pages/notifications/components/notification_list.dart'
    show NotificationList;
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundGradient(),
          SafeArea(
            child: Column(
              children: [
                const NotificationHeader(),
                Expanded(
                  child: EntranceAnimation(
                    delay: const Duration(milliseconds: 200),
                    child: const NotificationList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
