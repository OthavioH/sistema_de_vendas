import 'package:avaliacao_des_sistemas/presentation/screens/products_list/products_list_screen.dart';
import 'package:go_router/go_router.dart';

final appRoutes = GoRouter(
  initialLocation: '/products',
  routes: [
    GoRoute(
      path: '/products',
      builder: (context, state) => const ProductsListScreen(),
    ),
  ],
);
