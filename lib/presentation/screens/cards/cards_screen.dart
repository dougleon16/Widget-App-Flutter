import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards Screeen')),
      body: const Center(
        child: Text('Hola desde Tarjetas'),
        // link route /cards
      ),
    );
  }
}
