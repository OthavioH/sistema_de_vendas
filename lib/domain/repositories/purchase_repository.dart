import 'package:avaliacao_des_sistemas/domain/models/purchase.dart';
import 'package:avaliacao_des_sistemas/domain/models/purchase_method.dart';

abstract class PurchaseRepository {
  Future<void> createPurchase(Purchase purchase, PurchasePaymentMethod method);
}
