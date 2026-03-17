import 'package:avaliacao_des_sistemas/data/repositories/product_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final productsListControllerProvider =
    AsyncNotifierProvider.autoDispose<ProductsListController, List>(
      ProductsListController.new,
    );

class ProductsListController extends AsyncNotifier<List> {
  @override
  FutureOr<List> build() {
    return ref.read(productRepositoryProvider).getProducts();
  }
}
