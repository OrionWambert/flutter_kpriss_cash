import 'dart:ui';
import 'package:finance_mobile_app/ui/pages/transactions/components/card_selector.dart'
    show CardSelector;
import 'package:finance_mobile_app/ui/pages/transactions/components/transactions_header.dart'
    show TransactionsHeader;
import 'package:finance_mobile_app/ui/pages/transactions/components/transactions_list.dart'
    show TransactionsList;
import 'package:finance_mobile_app/ui/core_components/blur_blob.dart' show BlurBlob;
import 'package:flutter/material.dart';

class TransactionsView extends StatelessWidget {
  const TransactionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFd4fc79), // Light lime
              Color(0xFF96e6a1), // Light green
            ],
          ),
        ),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Stack(
              children: [
                const Positioned(
                  top: -50,
                  left: -50,
                  child: BlurBlob(color: Colors.green),
                ),
                const Positioned(
                  top: -50,
                  right: -50,
                  child: BlurBlob(color: Colors.yellow),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.6),
                            width: 1.5,
                          ),
                        ),
                        child: const Column(
                          children: [
                            TransactionsHeader(),
                            CardSelector(),
                            Expanded(child: TransactionsList()),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


