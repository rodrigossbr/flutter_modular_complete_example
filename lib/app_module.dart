import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_complete_example/pages/home/home_module.dart';

import 'pages/error/not_found_page.dart';
import 'pages/product/product_module.dart';
import 'widgets/draw_page.dart';

class AppModule extends Module {

  @override
  void binds(i) {
  }

  @override
  void routes(r) {
    r.child(
        '/',
        child: (context) => const DrawPage(),
        children: [
          ModuleRoute('/home', module: HomeModule()),
          ModuleRoute('/product', module: ProductModule()),
          WildcardRoute(child: (context) => const NotFoundPage()),
        ],
        transition: TransitionType.rightToLeft
    );

    // When path is empty, redirect to initial route
    Modular.to.addListener(() {
      var path = Modular.to.path;
      if (path == '/') {
        Modular.to.navigate(Modular.initialRoutePath);
      }
    });
  }
}