import 'package:material_ui/material_ui.dart';
import '../models/proyect_model.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/footer_scroll_view.dart';

class AbnoScreen extends StatelessWidget {
  const AbnoScreen({super.key});

  static const List<AbnoModel> _abno = [
    AbnoModel(
      title: 'X', //Ayin
      description:'Manager de la sede principal de L. Corp',
      iconAsset: 'assets/images/QoH.webp',
    ),
    AbnoModel(
      title: 'Angela',
      description: 'Secretaria de X',
      iconAsset: 'assets/images/Ppodae.webp',
    ),
    AbnoModel(
      title: 'Malkuth',
      description: 'Sephirah encargada del departamento de Control',
      iconAsset: 'assets/images/Plague.webp',
    ),
    AbnoModel(
      title: 'Hod', 
      description: 'Y las muchas cáscaras gritaron una palabra: "Manager"."',
      iconAsset: 'assets/images/Nothing_There.webp',
    ),
    AbnoModel(
      title: 'Netzach', 
      description: 'Y las muchas cáscaras gritaron una palabra: "Manager"."',
      iconAsset: 'assets/images/Nothing_There.webp',
    ),
    AbnoModel(
      title: 'Tiphereh A', 
      description: 'Y las muchas cáscaras gritaron una palabra: "Manager"."',
      iconAsset: 'assets/images/Nothing_There.webp',
    ),
    AbnoModel(
      title: 'Tiphereh B', 
      description: 'Y las muchas cáscaras gritaron una palabra: "Manager"."',
      iconAsset: 'assets/images/Nothing_There.webp',
    ),
    AbnoModel(
      title: 'Chesed', 
      description: '"Esta bala mágica realmente puede impactar a cualquiera, tal como dijiste."',
      iconAsset: 'assets/images/Magic_Bullet.webp',
    ),
    AbnoModel(
      title: 'Gebura',
      description: '"La gente ha estado cometiendo pecados desde hace mucho tiempo. "¿Por qué cometen pecados, sabiendo que está mal?"',
      iconAsset: 'assets/images/PunishingBird.webp',
    ),
    AbnoModel(
      title: 'Hokma',
      description: '"Colgaré su cabeza sobre mi cama. Solo entonces podré levantarme por la mañana sin tener una pesadilla."',
      iconAsset: 'assets/images/Red.webp',
    ),
    AbnoModel(
      title: 'Binah',
      description: '"¿Es malo si una mala acción puede lograr cientos de buenas acciones? ¿Tienes que sentirte culpable por tener un poder para hacer el bien?"',
      iconAsset: 'assets/images/OneSin.webp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titulo: 'Anomalias'),
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
                Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('1', style: TextStyle(color: Theme.of(context).colorScheme.secondary), //No se supone que funcione es una interpretación
                  ),
                  const SizedBox(width: 8),
                  Icon(Icons.arrow_forward, color: Theme.of(context).colorScheme.secondary),
                ],
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
