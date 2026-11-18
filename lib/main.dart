import 'package:material_ui/material_ui.dart';
import 'routes/app_routes.dart';
import 'themes/app_theme.dart';

void main() => runApp(const PortafolioApp());

class PortafolioApp extends StatelessWidget {
  const PortafolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portafolio Personal',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lobotomytheme,
      initialRoute: AppRoutes.home,
      routes: AppRoutes.rutas,
    );
  }
}