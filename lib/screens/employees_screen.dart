import 'package:material_ui/material_ui.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/footer_scroll_view.dart';

class Employees extends StatelessWidget {
  const Employees({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: const CustomAppBar(titulo: 'Empleados'),
      body: FooterScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.lock_outline, size: 64, color: theme.colorScheme.secondary),
                    const SizedBox(height: 30),
                    Text('Acceso Denegado', textAlign: TextAlign.center, //Imagina mostrarlos
                      style: theme.textTheme.titleLarge?.copyWith(color: theme.colorScheme.secondary, 
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
