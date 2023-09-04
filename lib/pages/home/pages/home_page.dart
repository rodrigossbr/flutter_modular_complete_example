import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_complete_example/widgets/page_header.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
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
            title: const Text('Product 2'),
            onTap: () => Modular.to.navigate('/product/2/'),
          ),
        ],
      ),
    );

    return Column(
      children: [
        const PageHeader(text: 'Home Page'),
        leading
      ],
    );
  }
}