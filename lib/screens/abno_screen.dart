import 'package:material_ui/material_ui.dart';
import '../models/proyect_model.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/footer_scroll_view.dart';

class AbnoScreen extends StatelessWidget {
  const AbnoScreen({super.key});

  static const List<RiskModel> _hobbies = [
    RiskModel(
      title: 'Programación',
      description: 'Crear apps y experimentar con nuevas tecnologías.',
      icon: Icons.computer,
      titleColor: Color(0xFFfef900)
    ),
    RiskModel(
      title: 'Videojuegos',
      description: 'Disfruto de juegos de estrategia y aventura.',
      icon: Icons.sports_esports,
      titleColor: Color(0xFFfef900)
    ),
    RiskModel(
      title: 'Música',
      description: 'Escuchar música mientras programo es mi ritual.',
      icon: Icons.music_note,
      titleColor: Color(0xFFfef900)
    ),
    RiskModel(
      title: 'Lectura',
      description: 'Libros de ciencia ficción y tecnología.',
      icon: Icons.menu_book,
      titleColor: Color(0xFFfef900)
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titulo: 'Mis Hobbies'),
      body: FooterScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
            const SizedBox(height: 12),
            ..._hobbies.map((h) => Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .primary
                          .withValues(alpha: 0.15),
                      child: Icon(h.icon,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    title: Text(h.title,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(h.description),
                  ),
                )),
            const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}