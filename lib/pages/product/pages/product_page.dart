import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_complete_example/widgets/page_header.dart';

class ProductPage extends StatelessWidget {

  final int id;

  const ProductPage({super.key, required this.id});

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
            title: const Text('Product detail 1'),
            onTap: () => Modular.to.navigate('/product/$id/full-details'),
          )
        ],
      ),
    );

    return Column(
      children: [
        PageHeader(text: 'Product $id Page'),
        leading
      ],
    );
  }
}