
import 'package:avaliacao_des_sistemas/domain/models/purchase_product.dart';

class Cart {
  final List<PurchaseProduct> products;

  Cart({
    required this.products,
  });

  double get total => products.fold(0, (sum, product) => sum + product.price * product.quantity);

  Cart copyWith({
    List<PurchaseProduct>? products,
  }) {
    return Cart(
      products: products ?? this.products,
    );
  }
}