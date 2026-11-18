import 'package:material_ui/material_ui.dart';

import '../models/proyect_model.dart';
import '../routes/app_routes.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/section_card.dart';
import '../widgets/footer_scroll_view.dart';
import '../widgets/navegation_bar_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Portafolio'),
      body: FooterScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 32),
              decoration: const BoxDecoration(color: Color(0xFF161616)),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/Lobotomy-Logo.webp',
                      width: 160,
                      height: 160,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Lobotomy Corporation',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const NavegationBarIcons(),
            const SizedBox(height: 16),
            SectionCard(
              section: SectionModel(
                title: 'Sobre Nosotros',
                subtitle: 'Conoce un poco más sobre L. Corp',
                iconAsset: 'assets/images/Ayin2.png',
                onTap: () => Navigator.pushNamed(context, AppRoutes.aboutus),
              ),
            ),
            SectionCard(
              section: SectionModel(
                title: 'Niveles de anomalias',
                subtitle: 'Categorización de energía y manejo operativo',
                iconAsset: 'assets/images/Risk_Zayin.webp',
                onTap: () => Navigator.pushNamed(context, AppRoutes.risk),
              ),
            ),
            SectionCard(
              section: SectionModel(
                title: 'Comentarios',
                subtitle:
                    'Lo que los previos empleados piensan del trabajo',
                iconAsset: 'assets/images/Notes.png',
                onTap: () => Navigator.pushNamed(context, AppRoutes.comments),
              ),
            ),
            const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
