import 'package:avaliacao_des_sistemas/l10n/app_localizations.dart';
import 'package:avaliacao_des_sistemas/domain/models/purchase_method.dart';
import 'package:flutter/material.dart';


class SelectPurchasePaymentMethodBottomSheet extends StatefulWidget {
  final ValueChanged<PurchasePaymentMethod> onPaymentMethodSelected;
  final PurchasePaymentMethod? initialMethod;

  const SelectPurchasePaymentMethodBottomSheet({
    super.key,
    required this.onPaymentMethodSelected,
    this.initialMethod,
  });

  @override
  State<SelectPurchasePaymentMethodBottomSheet> createState() =>
      _SelectPurchasePaymentMethodBottomSheetState();
}

class _SelectPurchasePaymentMethodBottomSheetState
    extends State<SelectPurchasePaymentMethodBottomSheet> {
  PurchasePaymentMethod? _selectedMethod;

  @override
  void initState() {
    super.initState();
    _selectedMethod = widget.initialMethod;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.only(top: 24.0, bottom: 32.0, left: 16.0, right: 16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                l10n.paymentMethodTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            ...PurchasePaymentMethod.values.map((method) {
              return RadioListTile<PurchasePaymentMethod>(
                contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                title: Text(_getLocalizedMethodLabel(l10n, method)),
                value: method,
                groupValue: _selectedMethod,
                onChanged: (PurchasePaymentMethod? value) {
                  if (value != null) {
                    setState(() {
                      _selectedMethod = value;
                    });
                    widget.onPaymentMethodSelected(value);
                  }
                },
              );
            }),
          ],
        ),
      ),
    );
  }

  String _getLocalizedMethodLabel(AppLocalizations l10n, PurchasePaymentMethod method) {
    switch (method) {
      case PurchasePaymentMethod.pix:
        return l10n.paymentPix;
      case PurchasePaymentMethod.creditCard:
        return l10n.paymentCreditCard;
      case PurchasePaymentMethod.debitCard:
        return l10n.paymentDebitCard;
      case PurchasePaymentMethod.cash:
        return l10n.paymentCash;
    }
  }
}
