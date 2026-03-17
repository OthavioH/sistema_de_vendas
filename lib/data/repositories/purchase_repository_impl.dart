import 'package:avaliacao_des_sistemas/data/database/database.dart';
import 'package:avaliacao_des_sistemas/domain/models/purchase.dart';
import 'package:avaliacao_des_sistemas/domain/models/purchase_method.dart';
import 'package:avaliacao_des_sistemas/domain/repositories/purchase_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart';

final purchaseRepositoryProvider = Provider<PurchaseRepository>((ref) {
  return PurchaseRepositoryImpl();
});

class PurchaseRepositoryImpl implements PurchaseRepository {
  @override
  Future<void> createPurchase(Purchase purchase, PurchasePaymentMethod method) async {
    final database = AppDatabase();

    await database.transaction(() async {
      // 1. Insert Purchase
      final purchaseId = await database.into(database.purchaseEntity).insert(
        PurchaseEntityCompanion.insert(
          totalValue: purchase.total,
          date: Value(purchase.date),
          userCPF: purchase.userCPF ?? '00000000000',
        ),
      );

      // 2. Insert Products
      for (final product in purchase.products) {
        await database.into(database.purchaseProductEntity).insert(
          PurchaseProductEntityCompanion.insert(
            purchaseId: purchaseId,
            productId: product.id,
            quantity: product.quantity,
            price: product.price,
          ),
        );
      }
    });

    await database.close();
  }
}
