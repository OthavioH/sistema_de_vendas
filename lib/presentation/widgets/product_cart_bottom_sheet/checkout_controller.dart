import 'package:avaliacao_des_sistemas/data/repositories/purchase_repository_impl.dart';
import 'package:avaliacao_des_sistemas/domain/models/purchase.dart';
import 'package:avaliacao_des_sistemas/domain/models/purchase_method.dart';
import 'package:avaliacao_des_sistemas/presentation/screens/cart/cart_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckoutResult {
  final Purchase purchase;
  final PurchasePaymentMethod method;

  CheckoutResult({required this.purchase, required this.method});
}

final checkoutControllerProvider =
    NotifierProvider.autoDispose<CheckoutController, AsyncValue<CheckoutResult?>>(
  CheckoutController.new,
);

class CheckoutController extends Notifier<AsyncValue<CheckoutResult?>> {
  @override
  AsyncValue<CheckoutResult?> build() {
    return const AsyncData(null);
  }

  Future<void> checkout(PurchasePaymentMethod method, String cpf) async {
    state = const AsyncLoading();

    try {
      final repository = ref.read(purchaseRepositoryProvider);
      final cart = ref.read(cartControllerProvider);
      
      final purchase = Purchase(
        id: 0, // Id is auto increment
        date: DateTime.now(),
        total: cart.total,
        products: cart.products,
        userCPF: cpf.replaceAll(RegExp(r'[^0-9]'), ''),
      );

      await repository.createPurchase(purchase, method);
      
      // Limpar carrinho
      ref.read(cartControllerProvider.notifier).clearCart();
      
      state = AsyncData(CheckoutResult(purchase: purchase, method: method));
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
