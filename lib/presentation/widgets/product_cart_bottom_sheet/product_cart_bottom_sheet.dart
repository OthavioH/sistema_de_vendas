import 'package:avaliacao_des_sistemas/presentation/widgets/product_cart_bottom_sheet/checkout_controller.dart';
import 'package:avaliacao_des_sistemas/presentation/widgets/cpf_bottom_sheet/cpf_bottom_sheet.dart';
import 'package:avaliacao_des_sistemas/presentation/widgets/select_purchase_payment_method/select_purchase_payment_method_bottom_sheet.dart';
import 'package:avaliacao_des_sistemas/presentation/screens/cart/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widgets/remove_product_dialog.dart';
import 'package:avaliacao_des_sistemas/presentation/screens/checkout/checkout_screen.dart';
import 'package:avaliacao_des_sistemas/l10n/app_localizations.dart';
import 'package:avaliacao_des_sistemas/core/i18n/currency_service.dart';
class ProductCartBottomSheet extends ConsumerWidget {
  const ProductCartBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(cartControllerProvider.select((cart) => cart.products));
    final total = ref.watch(cartControllerProvider.select((cart) => cart.total));
    final isCheckingOut = ref.watch(checkoutControllerProvider) is AsyncLoading;

    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return Container(
          width: double.infinity,
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.8,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    AppLocalizations.of(context)!.cartTitle,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                if (products.isEmpty)
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(AppLocalizations.of(context)!.emptyCart),
                  )
                else
                  Flexible(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return ListTile(
                          title: Text(product.name),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${CurrencyService.format(
                                  product.price,
                                  locale: Localizations.localeOf(context).toString(),
                                  symbol: Localizations.localeOf(context).languageCode == 'en' ? r'US$' : r'R$',
                                )} ${AppLocalizations.of(context)!.each}',
                              ),
                              Text(
                                '${AppLocalizations.of(context)!.total}: ${CurrencyService.format(
                                  product.price * product.quantity,
                                  locale: Localizations.localeOf(context).toString(),
                                  symbol: Localizations.localeOf(context).languageCode == 'en' ? r'US$' : r'R$',
                                )}',
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(
                                  product.quantity == 1
                                      ? Icons.delete_outline
                                      : Icons.remove_circle_outline,
                                  color: product.quantity == 1 ? Theme.of(context).colorScheme.error : null,
                                ),
                                onPressed: isCheckingOut ? null : () async {
                                  if (product.quantity == 1) {
                                    final bool? confirm = await showDialog<bool>(
                                      context: context,
                                      builder: (context) {
                                        return const RemoveProductDialog();
                                      },
                                    );
                                    if (confirm == true) {
                                      ref.read(cartControllerProvider.notifier).removeProduct(product);
                                    }
                                  } else {
                                    ref.read(cartControllerProvider.notifier).removeProduct(product);
                                  }
                                },
                              ),
                              Text(
                                '${product.quantity}',
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              IconButton(
                                icon: const Icon(Icons.add_circle_outline),
                                onPressed: (product.quantity >= product.stock || isCheckingOut)
                                    ? null
                                    : () {
                                        ref.read(cartControllerProvider.notifier).addProduct(product);
                                      },
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, -5),
                      )
                    ],
                  ),
                  child: Consumer(
                    builder: (context, ref, child) {
                      ref.listen<AsyncValue<CheckoutResult?>>(
                        checkoutControllerProvider,
                        (previous, next) {
                          if (next is AsyncError) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Erro ao finalizar compra: ${next.error}')),
                            );
                          } else if (previous is AsyncLoading && next is AsyncData && next.value != null) {
                            Navigator.of(context).pop();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CheckoutScreen(result: next.value!),
                              ),
                            );
                          }
                        },
                      );

                      final checkoutState = ref.watch(checkoutControllerProvider);
                      final isCheckingOut = checkoutState is AsyncLoading;

                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${AppLocalizations.of(context)!.total}:',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                CurrencyService.format(
                                  total,
                                  locale: Localizations.localeOf(context).toString(),
                                  symbol: Localizations.localeOf(context).languageCode == 'en' ? r'US$' : r'R$',
                                ),
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (products.isEmpty || isCheckingOut)
                                  ? null
                                  : () {
                                      showModalBottomSheet(
                                        context: context,
                                        isScrollControlled: true,
                                        builder: (cpfBottomSheetContext) {
                                          return CpfBottomSheet(
                                            onCpfConfirmed: (cpf) {
                                              Navigator.of(cpfBottomSheetContext).pop();
                                              
                                              showModalBottomSheet(
                                                context: context,
                                                builder: (paymentBottomSheetContext) {
                                                  return SelectPurchasePaymentMethodBottomSheet(
                                                    onPaymentMethodSelected: (method) async {
                                                      Navigator.of(paymentBottomSheetContext).pop(); 
                                                      
                                                      await ref.read(checkoutControllerProvider.notifier).checkout(method, cpf);
                                                    },
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(16),
                              ),
                              child: isCheckingOut 
                                ? const SizedBox(
                                    height: 20, 
                                    width: 20, 
                                    child: CircularProgressIndicator(strokeWidth: 2)
                                  ) 
                                : Text(
                                  AppLocalizations.of(context)!.finish,
                                  style: const TextStyle(fontSize: 16),
                                ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],

            ),
          ),
        );
      },
    );
  }
}
