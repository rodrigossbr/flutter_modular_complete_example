import 'package:flutter_modular/flutter_modular.dart';

import 'pages/home_page.dart';

class HomeModule extends Module {

  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
        '/',
        child: (context) => const RouterOutlet(),
        children: [
          ChildRoute(
            '/page',
            child: (context) => const HomePage(),
          ),
          RedirectRoute('/home', to: '/home/page'),
        ],
        transition: TransitionType.rightToLeft
    );
  }
}