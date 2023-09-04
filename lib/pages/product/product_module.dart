import 'package:flutter_modular/flutter_modular.dart';

import 'pages/product_detail_page.dart';
import 'pages/product_page.dart';

class ProductModule extends Module {

  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
        '/:id',
        child: (context) => const RouterOutlet(),
        children: [
          ChildRoute(
            '/',
            child: (context) => ProductPage(id: int.tryParse(r.args.params['id']) ?? 0),
          ),
          ChildRoute(
            '/full-details',
            child: (context) => ProductDetailPage(id: int.tryParse(r.args.params['id']) ?? 0),
          ),
        ],
        transition: TransitionType.rightToLeft
    );
  }
}