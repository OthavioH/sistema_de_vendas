import 'package:avaliacao_des_sistemas/data/database/database.dart';
import 'package:avaliacao_des_sistemas/data/mappers/product_mapper.dart';
import 'package:avaliacao_des_sistemas/domain/models/product.dart';
import 'package:avaliacao_des_sistemas/domain/repositories/product_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepositoryImpl();
});

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<List<Product>> getProducts() async {
    final database = AppDatabase();

    final productEntitiesList = await database
        .select(database.productEntity)
        .get();

    database.close();

    return productEntitiesList
        .map((productEntity) => productEntity.toDomain())
        .toList();
  }
}
