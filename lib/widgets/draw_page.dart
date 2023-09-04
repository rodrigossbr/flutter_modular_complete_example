import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DrawPage extends StatefulWidget {

  const DrawPage({super.key});

  @override
  State<DrawPage> createState() => _DrawPageState();
}

class _DrawPageState extends State<DrawPage> with RouteAware {

  late String path = '';

  @override
  void initState() {
    super.initState();

    Modular.to.addListener(() {
      setState(() {
        path = Modular.to.path;
      });
    });
  }

  Widget build(BuildContext context) {
    final leading = SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        children: [
          ListTile(
            title: const Text('Home'),
            onTap: () => Modular.to.navigate('/home'),
          ),
          ListTile(
            title: const Text('Product 1'),
            onTap: () => Modular.to.navigate('/product/1/'),
          ),
          ListTile(
            title: const Text('Product 1 full details'),
            onTap: () => Modular.to.navigate('/product/1/full-details'),
          ),
          ListTile(
            title: const Text('Product 2'),
            onTap: () => Modular.to.navigate('/product/2/'),
          ),
          ListTile(
            title: const Text('Product 2 full details'),
            onTap: () => Modular.to.navigate('/product/2/full-details'),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text('Draw Page $path')),
      body: Row(
        children: [
          leading,
          Container(width: 2, color: Colors.black45),
          const Expanded(child: RouterOutlet()),
        ],
      ),
    );
  }
}