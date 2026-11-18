import 'package:material_ui/material_ui.dart';

class RiskModel {
  final String title;
  final String description;
  final IconData? icon;
  final String? iconAsset;
  final Color titleColor;

  const RiskModel({
    required this.title,
    required this.description,
    this.icon,
    this.iconAsset,
    required this.titleColor
  });
}

class SectionModel {
  final String title;
  final String subtitle;
  final IconData? icon;
  final String? iconAsset;
  final VoidCallback onTap;

  const SectionModel({
    required this.title,
    required this.subtitle,
    this.icon,
    this.iconAsset,
    required this.onTap,
  });
}

class AppModel {              //he cambiado el nombre de esto como 3 veces porque agregaba mas cosas que seguian la misma formula :sob: aunque pereza pegar un emoji aca
  final String title;
  final String description;
  final IconData? icon;
  final String? iconAsset;

  const AppModel({
    required this.title,
    required this.description,
    this.icon,
    this.iconAsset,
  });
}