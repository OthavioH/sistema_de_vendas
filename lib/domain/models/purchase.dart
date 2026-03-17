
import 'package:avaliacao_des_sistemas/domain/models/purchase_product.dart';

class Purchase {
  final int id;
  final DateTime date;
  final double total;
  final List<PurchaseProduct> products;
  final String? userCPF;

  Purchase({
    required this.id,
    required this.date,
    required this.total,
    required this.products,
    this.userCPF,
  });

}