import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

//Lista de colores in,utable
final colorListTheme = Provider<List<Color>>((ref) => colorList);

//Color Actual
final selectedColorProvider = StateProvider<int>((ref) => 0);
