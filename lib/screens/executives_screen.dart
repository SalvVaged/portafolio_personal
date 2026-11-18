import 'package:material_ui/material_ui.dart';
import '../models/proyect_model.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/footer_scroll_view.dart';

class ExeScreen extends StatelessWidget {
  const ExeScreen({super.key});

  static const List<AppModel> _abno = [
    AppModel(
      title: 'X', //Ayin
      description:'Manager de la sede principal de L. Corp',
      iconAsset: 'assets/images/Ayin.webp',
    ),
    AppModel(
      title: 'Angela',
      description: 'Secretaria de X',
      iconAsset: 'assets/images/AngelaSprite.png',
    ),
    AppModel(
      title: 'Malkuth',
      description: 'Encargada del departamento de Control',
      iconAsset: 'assets/images/Malkuth.webp',
    ),
    AppModel(
      title: 'Yesod',
      description: 'Lider del equipo de Información',
      iconAsset: 'assets/images/Yesod.webp',
    ),
    AppModel(
      title: 'Hod', 
      description: 'Lider del departamento de Entrenamiento',
      iconAsset: 'assets/images/Hod.webp',
    ),
    AppModel(
      title: 'Netzach', 
      description: 'Lider del departamento de Salud',
      iconAsset: 'assets/images/Net.webp',
    ),
    AppModel(
      title: 'Tiphereh A', 
      description: 'Primer director de la zona Central',
      iconAsset: 'assets/images/TipherethA.webp',
    ),
    AppModel(
      title: 'Tiphereh B', 
      description: 'Segundo director de la zona Central',
      iconAsset: 'assets/images/TipherethB.webp',
    ),
    AppModel(
      title: 'Chesed', 
      description: 'Lider del equipo de Bienestar Laboral',
      iconAsset: 'assets/images/Chesed.webp',
    ),
    AppModel(
      title: 'Gebura',
      description: 'Lider del departamento de Seguridad',
      iconAsset: 'assets/images/Gebura.webp',
    ),
    AppModel(
      title: 'Hokma',
      description: 'Manager del departamento de Registros',
      iconAsset: 'assets/images/Hokma.webp',
    ),
    AppModel(
      title: 'Binah',
      description: 'Manager del departamento de Extracción',
      iconAsset: 'assets/images/Binah.webp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titulo: 'Ejecutivos'),
      body: FooterScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 12),
                ..._abno.map(
                  (h) => Card(
                    color: Theme.of(context).colorScheme.secondary,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      leading: h.iconAsset != null
                          ? Image.asset(h.iconAsset!, width: 60, height: 60,  fit: BoxFit.contain,
                            )
                          : CircleAvatar(
                              backgroundColor: Theme.of(context).colorScheme.surface
                                  .withValues(alpha: 0.15),
                              child: Icon(
                                h.icon,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                      title: Text(
                        h.title,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.surface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(h.description,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
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
