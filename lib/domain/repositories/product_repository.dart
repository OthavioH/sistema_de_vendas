
import 'package:avaliacao_des_sistemas/domain/models/product.dart';

abstract class ProductRepository {

  Future<List<Product>> getProducts();
}

