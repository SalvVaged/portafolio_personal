// lib/widgets/barra_navegacion_iconos.dart
import 'package:material_ui/material_ui.dart';
import '../routes/app_routes.dart';

class NavegationBarIcons extends StatelessWidget {
  const NavegationBarIcons({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      const _ItemNav.asset('assets/images/Risk_Aleph.webp', 'Anomalias', AppRoutes.abno),
      const _ItemNav.asset('assets/images/Angela.png', 'Ejecutivos', AppRoutes.exe),
      const _ItemNav.asset('assets/images/BongBong.png', 'Empleados', AppRoutes.employees),
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      color: Theme.of(context).colorScheme.secondary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,   // ← centrado
        children: items
            .map((item) => Expanded(                  // ← mismo ancho
                  child: _buildItem(context, item),
                ))
            .toList(),
      ),
    );
  }
   

  Widget _buildItem(BuildContext context, _ItemNav item) {
    Color color = Theme.of(context).colorScheme.surface;
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () => Navigator.pushNamed(context, item.ruta),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            item.icono is String
              ? Image.asset(item.icono as String, width: 28, height: 28)
              : Icon(item.icono as IconData, color: color, size: 28),
            const SizedBox(height: 4),
            Text(
              item.label,
              style: TextStyle(fontSize: 11, color: color),
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemNav {
  final Object icono;
  final String label;
  final String ruta;

  const _ItemNav(this.icono, this.label, this.ruta);

  const _ItemNav.asset(String assetPath, this.label, this.ruta)
      : icono = assetPath;
}