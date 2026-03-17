import 'package:drift/drift.dart';
import 'product_entity.dart';
import 'supplier_entity.dart';

class ProductSupplierEntity extends Table {
  IntColumn get productId => integer().references(ProductEntity, #id)();
  IntColumn get supplierId => integer().references(SupplierEntity, #id)();

  @override
  Set<Column> get primaryKey => {productId, supplierId};
}
