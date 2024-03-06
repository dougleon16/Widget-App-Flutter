import 'package:flutter/material.dart' show IconData, Icons;

class MenuItems {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItems>[
  MenuItems(
      title: 'Botones',
      subtitle: 'Varios Botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button),
  MenuItems(
      title: 'Tarjetas',
      subtitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItems(
      title: 'Progress Indicators',
      subtitle: 'Generales y controloados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItems(
      title: 'SnackBars and Dialogs',
      subtitle: 'Indicadores en Pantallas',
      link: '/snackbars',
      icon: Icons.info_outline)
];
