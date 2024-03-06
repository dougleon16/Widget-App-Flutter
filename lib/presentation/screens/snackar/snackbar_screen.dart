import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: const Text('Hello World'),
      action: SnackBarAction(label: 'ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
                title: const Text('Estas seguro?'),
                content: const Text('No podras recuperar esta informacion'),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Text('Cancelar'),
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: const Text('Aceptar'),
                  )
                ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  openDialog(context);
                },
                child: const Text('Licencias Usadas')),
            FilledButton.tonal(
                onPressed: () {}, child: const Text('Mostrar Dialogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
          showCustomSnackBar(context);
          // final snackBar = SnackBar(
          //   content: const Text('Hola Mundo'),
          //   action: SnackBarAction(
          //     label: 'Ok',
          //     onPressed: () {},
          //   ),
          // );
          // ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}
