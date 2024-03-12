import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(themeNotiferProvider).isDarkMode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(themeNotiferProvider.notifier).toggleDarkMode();
              },
              icon: Icon(isDarkMode
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined))
        ],
      ),
      body: const _ListThemeView(),
    );
  }
}

class _ListThemeView extends ConsumerWidget {
  const _ListThemeView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colorList = ref.watch(colorListTheme);

    final int selectedColor = ref.watch(themeNotiferProvider).selectedColor;

    return ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          final Color color = colorList[index];
          return RadioListTile(
              title: Text(
                'Este Color',
                style: TextStyle(color: color),
              ),
              subtitle: Text('${color.value}'),
              activeColor: color,
              value: index,
              groupValue: selectedColor,
              onChanged: (value) {
                ref.read(themeNotiferProvider.notifier).changeColorIndex(index);
                //notifcar el cambii
              });
        });
  }
}
