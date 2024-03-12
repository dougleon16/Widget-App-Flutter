import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// valores de estado es decir que cambien de true o false
final isDarkModeProvider = StateProvider<bool>((ref) => false);

//Lista de colores in,utable
//provider para valores inmutables osea que no van a cambiar
final colorListTheme = Provider<List<Color>>((ref) => colorList);

//Color Actual
final selectedColorProvider = StateProvider<int>((ref) => 0);

//Un Objeto de tipo AppTheme(custom)
//se utiliza para estados mas elavorados
final themeNotiferProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

class ThemeNotifier extends StateNotifier<AppTheme> {
  // crea la primera instacia de apptheme- el appTheme ese el state
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
