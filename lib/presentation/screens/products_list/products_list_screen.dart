import 'package:avaliacao_des_sistemas/l10n/app_localizations.dart';
import 'package:avaliacao_des_sistemas/presentation/screens/cart/cart_controller.dart';
import 'package:avaliacao_des_sistemas/presentation/screens/products_list/products_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:avaliacao_des_sistemas/presentation/widgets/product_cart_bottom_card.dart';
import 'package:avaliacao_des_sistemas/presentation/widgets/product_cart_bottom_sheet/widgets/remove_product_dialog.dart';

class ProductsListScreen extends StatelessWidget {
  const ProductsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.productListTitle)),
      body: Consumer(
        builder: (context, ref, child) {
          final products = ref.watch(productsListControllerProvider);
          return products.when(
            data: (products) {
              return ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ListTile(
                    title: Text(product.name),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.description),
                        const SizedBox(height: 4),
                        Text(
                          '${l10n.currencySymbol} ${product.price.toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    trailing: Consumer(
                      builder: (context, cartRef, child) {
                        final quantity = cartRef.watch(
                          cartControllerProvider.select((cart) {
                            final index =
                                cart.products.indexWhere((p) => p.id == product.id);
                            return index != -1 ? cart.products[index].quantity : 0;
                          }),
                        );

                        if (quantity == 0) {
                          return IconButton(
                            icon: const Icon(Icons.add_shopping_cart),
                            onPressed: product.stock > 0
                                ? () {
                                    cartRef
                                        .read(cartControllerProvider.notifier)
                                        .addProduct(product);
                                  }
                                : null,
                          );
                        }

                        return Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(
                                quantity == 1
                                    ? Icons.delete_outline
                                    : Icons.remove_circle_outline,
                                color: quantity == 1
                                    ? Theme.of(context).colorScheme.error
                                    : null,
                              ),
                              onPressed: () async {
                                if (quantity == 1) {
                                  final bool? confirm = await showDialog<bool>(
                                    context: context,
                                    builder: (context) {
                                      return const RemoveProductDialog();
                                    },
                                  );
                                  if (confirm == true) {
                                    cartRef
                                        .read(cartControllerProvider.notifier)
                                        .removeProduct(product);
                                  }
                                } else {
                                  cartRef
                                      .read(cartControllerProvider.notifier)
                                      .removeProduct(product);
                                }
                              },
                            ),
                            Text(
                              '$quantity',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.add_circle_outline),
                              onPressed: quantity >= product.stock
                                  ? null
                                  : () {
                                      cartRef
                                          .read(cartControllerProvider.notifier)
                                          .addProduct(product);
                                    },
                            ),
                          ],
                        );
                      },
                    ),
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) =>
                Center(child: Text(l10n.loadError)),
          );
        },
      ),
      bottomNavigationBar: const ProductCartBottomCard(),
    );
  }
}
