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
      icon: Icons.info_outline),
  MenuItems(
      title: 'Animated Container',
      subtitle: 'Use of Stateful Widgets',
      link: '/animated',
      icon: Icons.rectangle_outlined),
  MenuItems(
      title: 'Ui Controls + Tiles',
      subtitle: 'Una serie de controles de flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItems(
      title: 'Introduccion a la aplicacion',
      subtitle: 'Tutorial del aplicativo',
      link: '/tutorial',
      icon: Icons.accessibility_new_rounded),
  MenuItems(
      title: 'Infinite Scroll & Pull to Refresh',
      subtitle: 'Infinite Scroll & Pull to Refresh',
      link: '/scroll',
      icon: Icons.list_alt_rounded),
];
