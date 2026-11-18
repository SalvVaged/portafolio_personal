import 'package:material_ui/material_ui.dart';

class HobbyModel {
  final String titulo;
  final String descripcion;
  final IconData icono;

  const HobbyModel({
    required this.titulo,
    required this.descripcion,
    required this.icono,
  });
}

class SectionModel {
  final String titulo;
  final String subtitulo;
  final IconData? icono;
  final String? iconoAsset;
  final VoidCallback onTap;

  const SectionModel({
    required this.titulo,
    required this.subtitulo,
    this.icono,
    this.iconoAsset,
    required this.onTap,
  });
}