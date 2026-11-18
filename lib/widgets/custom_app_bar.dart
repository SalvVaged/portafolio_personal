import 'package:material_ui/material_ui.dart';
import '../routes/app_routes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;
  final bool mostrarBotonContacto;

  const CustomAppBar({
    super.key,
    required this.titulo,
    this.mostrarBotonContacto = true,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titulo),
      actions: [
        if (mostrarBotonContacto)
          IconButton(
            tooltip: 'Firma del desarrollador',
            icon: const Icon(Icons.code),
            onPressed: () =>
                Navigator.pushNamed(context, AppRoutes.contact),
          ),
      ],
    );
  }
}