
import 'package:avaliacao_des_sistemas/data/entities/product_entity.dart';
import 'package:avaliacao_des_sistemas/data/entities/purchase_entity.dart';
import 'package:drift/drift.dart';

class PurchaseProductEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get purchaseId => integer().references(PurchaseEntity, #id)();
  IntColumn get productId => integer().references(ProductEntity, #id)();
  IntColumn get quantity => integer()();
  RealColumn get price => real()();
}