import 'package:avaliacao_des_sistemas/domain/models/product.dart';

class PurchaseProduct extends Product {
  final int quantity;

  PurchaseProduct({
    required super.id,
    required super.name,
    required super.description,
    required super.price,
    required super.stock,
    required this.quantity,
  });

  factory PurchaseProduct.fromProduct(Product product, int quantity) {
    return PurchaseProduct(
      id: product.id,
      name: product.name,
      description: product.description,
      price: product.price,
      stock: product.stock,
      quantity: quantity,
    );
  }

  PurchaseProduct copyWith({
    int? quantity,
  }) {
    return PurchaseProduct(
      id: id,
      name: name,
      description: description,
      price: price,
      stock: stock,
      quantity: quantity ?? this.quantity,
    );
  }
}
