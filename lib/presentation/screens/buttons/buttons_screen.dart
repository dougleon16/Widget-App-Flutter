import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Screeen')),
      body: const Center(
        child: Text('Hola desde Botones'),
        // link route /buttons
      ),
    );
  }
}
