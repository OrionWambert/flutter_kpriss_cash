import 'package:finance_mobile_app/features/onboarding/state/user_bloc.dart'
    show UserBloc;
import 'package:finance_mobile_app/features/onboarding/state/user_state.dart'
    show UserState;
import 'package:finance_mobile_app/generated/assets.dart';
import 'package:finance_mobile_app/ui/core_components/app_icon_button.dart';
import 'package:finance_mobile_app/ui/core_components/interactive_wrapper.dart'
    show InteractiveWrapper;
import 'package:finance_mobile_app/ui/pages/notifications/notification_page.dart';
import 'package:finance_mobile_app/ui/pages/transactions/transactions_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            InteractiveWrapper(
              child: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(Assets.iconesLogo),
              ),
            ),
            const SizedBox(width: 12),
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                final displayName = state.enteredName.trim().isNotEmpty
                    ? state.enteredName
                    : 'Utilisateur';
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Bon retour parmi nous',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Salut, $displayName',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
        Row(
          children: [
            AppIconButton(
              icon: Icons.notifications_none,
              onTap: () {
                context.go(NotificationPage.routeName);
              },
            ),
            SizedBox(width: 10),
            AppIconButton(
              icon: Icons.trending_up,
              onTap: () {
                context.go(TransactionsPage.routeName);
              },
            ),
          ],
        ),
      ],
    );
  }
}
