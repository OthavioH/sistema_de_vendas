import 'package:avaliacao_des_sistemas/l10n/app_localizations.dart';
import 'package:avaliacao_des_sistemas/presentation/screens/cart/cart_controller.dart';
import 'package:avaliacao_des_sistemas/presentation/widgets/product_cart_bottom_sheet/product_cart_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductCartBottomCard extends ConsumerWidget {
  const ProductCartBottomCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartControllerProvider);
    final l10n = AppLocalizations.of(context)!;
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return ProductCartBottomSheet();
          },
        );
      },
      child: Container(
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${l10n.total}: ${l10n.currencySymbol} ${cart.total.toStringAsFixed(2)}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}