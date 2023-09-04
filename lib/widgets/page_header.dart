import 'package:flutter/widgets.dart';

class PageHeader extends StatelessWidget {

  final String text;

  const PageHeader({super.key, required this.text});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text, style: const TextStyle(fontSize: 30),),
    );
  }
}