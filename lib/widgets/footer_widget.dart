import 'package:material_ui/material_ui.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Theme.of(context).colorScheme.surface,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            '© 2026 Ricardo Noriega - Portafolio',
            style: TextStyle(
              fontSize: 13,
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Hecho en Flutter',
            style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.secondary),
          ),
        ],
      ),
    );
  }
}