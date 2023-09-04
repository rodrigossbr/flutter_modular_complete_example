import 'package:flutter/widgets.dart';
import 'package:flutter_modular_complete_example/widgets/page_header.dart';

class NotFoundPage extends StatelessWidget {

  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageHeader(text: 'Not Fount');
  }
}