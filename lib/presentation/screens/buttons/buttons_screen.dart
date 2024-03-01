import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Screeen')),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
      // link route /buttons
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            // ElevatedButton
            ElevatedButton(onPressed: () {}, child: const Text('Elevetated ')),
            //Elevated Button Disable
            const ElevatedButton(
                onPressed: null, child: Text('Elevated Disable')),
            //Elevated Icon Button
            ElevatedButton.icon(
                onPressed: () {},
                label: const Text('Elevated Icon'),
                icon: const Icon(Icons.access_alarm_rounded)),
            //Filled Button
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            //Filled Icon Button
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.account_balance_rounded),
                label: const Text('Filled Icon')),
            //Outlined Button
            OutlinedButton(
                onPressed: () {}, child: const Text('Outlined Button')),
            // Outlined Icon Button
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Outlined Icon')),
            //Text Button
            TextButton(onPressed: () {}, child: const Text('Text Button')),
            //Text Button Icon
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Text Button Icon')),

            // TODO Custom Button

            const CustomButton(),

            //IconButton
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.table_bar_rounded)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.ios_share_rounded),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                  iconColor: const MaterialStatePropertyAll(Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola Mundo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
