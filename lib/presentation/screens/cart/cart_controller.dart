import 'package:avaliacao_des_sistemas/domain/models/cart.dart';
import 'package:avaliacao_des_sistemas/domain/models/product.dart';
import 'package:avaliacao_des_sistemas/domain/models/purchase_product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartControllerProvider = NotifierProvider.autoDispose<CartController, Cart>(
  CartController.new,
);

class CartController extends Notifier<Cart> {
  @override
  Cart build() {
    return Cart(products: []);
  }

  void addProduct(Product product) {
    final existingProduct = state.products.indexWhere(
      (p) => p.id == product.id,
    );

    if (existingProduct != -1) {
      final updatedProducts = [...state.products];
      final purchaseProduct = updatedProducts[existingProduct];
      if (purchaseProduct.quantity < product.stock) {
        updatedProducts[existingProduct] = purchaseProduct.copyWith(
          quantity: purchaseProduct.quantity + 1,
        );
        state = state.copyWith(products: updatedProducts);
      }
    } else {
      if (product.stock > 0) {
        state = state.copyWith(
          products: [...state.products, PurchaseProduct.fromProduct(product, 1)],
        );
      }
    }
  }

  void removeProduct(Product product) {
    final existingProduct = state.products.indexWhere(
      (p) => p.id == product.id,
    );

    if (existingProduct != -1) {
      final updatedProducts = [...state.products];
      final purchaseProduct = updatedProducts[existingProduct];
      if (purchaseProduct.quantity > 1) {
        updatedProducts[existingProduct] = purchaseProduct.copyWith(
          quantity: purchaseProduct.quantity - 1,
        );
      } else {
        updatedProducts.removeAt(existingProduct);
      }
      state = state.copyWith(products: updatedProducts);
    }
  }

  void clearCart() {
    state = state.copyWith(products: []);
  }
}
