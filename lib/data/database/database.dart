import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';

import '../entities/product_entity.dart';
import '../entities/supplier_entity.dart';
import '../entities/product_supplier_entity.dart';
import '../entities/purchase_entity.dart';
import '../entities/purchase_product_entity.dart';

part 'database.g.dart';

@DriftDatabase(tables: [
  ProductEntity,
  SupplierEntity,
  ProductSupplierEntity,
  PurchaseEntity,
  PurchaseProductEntity,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
        
        await batch((batch) {
          batch.insertAll(supplierEntity, [
            SupplierEntityCompanion.insert(
              name: 'Fornecedor A',
              address: 'Rua das Indústrias, 100',
            ),
            SupplierEntityCompanion.insert(
              name: 'Fornecedor B',
              address: 'Avenida Comercial, 200',
            ),
          ]);
          
          batch.insertAll(productEntity, [
            ProductEntityCompanion.insert(
              name: 'Produto 1',
              description: 'Descrição do Produto 1',
              price: 10.50,
              stock: 100,
            ),
            ProductEntityCompanion.insert(
              name: 'Produto 2',
              description: 'Descrição do Produto 2',
              price: 25.00,
              stock: 50,
            ),
          ]);
        });
      },
    );
  }

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'products',
      native: const DriftNativeOptions(
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }
}