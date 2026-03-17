import 'package:avaliacao_des_sistemas/data/database/database.dart';
import 'package:avaliacao_des_sistemas/domain/models/product.dart';

extension ProductMapper on ProductEntityData {
  Product toDomain() {
    return Product(
      id: id,
      name: name,
      description: description,
      price: price,
      stock: stock,
    );
  }
}
