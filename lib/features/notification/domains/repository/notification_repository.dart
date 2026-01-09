import 'package:finance_mobile_app/features/notification/domains/models/notification_model.dart';

class NotificationRepository {
  Future<List<NotificationModel>> getNotifications() async {
    await Future.delayed(const Duration(milliseconds: 800));

    return [
      NotificationModel(
        title: 'Transaction reçue',
        description: 'Vous avez reçu 428.00\$ de Henrik Jansen',
        receiveAt: DateTime.now().subtract(const Duration(minutes: 5)),
      ),
      NotificationModel(
        title: 'Paiement effectué',
        description: 'Paiement de 124.55\$ effectué chez Multiplex',
        receiveAt: DateTime.now().subtract(const Duration(hours: 2)),
      ),
      NotificationModel(
        title: 'Nouvelle devise ajoutée',
        description: 'La devise Euro a été ajoutée à votre portefeuille',
        receiveAt: DateTime.now().subtract(const Duration(hours: 5)),
      ),
      NotificationModel(
        title: 'Solde mis à jour',
        description: 'Votre solde a été mis à jour avec succès',
        receiveAt: DateTime.now().subtract(const Duration(days: 1)),
      ),
      NotificationModel(
        title: 'Rappel de paiement',
        description: 'N\'oubliez pas de payer votre abonnement Megogo',
        receiveAt: DateTime.now().subtract(const Duration(days: 2)),
      ),
    ];
  }
}

