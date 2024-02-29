import 'package:flutter/material.dart' show IconData, Icons;

class MenuItems {
  final String tittle;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItems(
      {required this.tittle,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItems>[
  MenuItems(
      tittle: 'Botones',
      subtitle: 'Varios Botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button),
  MenuItems(
      tittle: 'Tarjetas',
      subtitle: 'Un contenedor estilizado',
      link: '/card',
      icon: Icons.credit_card),
];
