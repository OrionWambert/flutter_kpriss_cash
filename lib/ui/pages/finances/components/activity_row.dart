import 'package:finance_mobile_app/ui/pages/finances/components/action_button.dart'
    show ActionBtn;
import 'package:flutter/material.dart';

class ActionRow extends StatelessWidget {
  const ActionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        ActionBtn(icon: Icons.north_east, label: 'Dépense'),
        ActionBtn(icon: Icons.sync, label: 'Rafraîchir'),
        ActionBtn(icon: Icons.south_west, label: 'Revenu'),
      ],
    );
  }
}
