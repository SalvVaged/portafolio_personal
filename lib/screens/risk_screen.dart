import 'package:material_ui/material_ui.dart';
import '../models/proyect_model.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/footer_scroll_view.dart';

class RiskScreen extends StatelessWidget {
  const RiskScreen({super.key});

  static const List<RiskModel> _hobbies = [
    RiskModel(
      title: 'ZAYIN - Riesgo mínimo',
      description:
          'Anomalías con nula o casi nula agresividad. '
          'No representan una amenaza directa para el personal y, en condiciones controladas, '
          'pueden generar efectos positivos sobre los empleados.',
      iconAsset: 'assets/images/Risk_Zayin.webp',
      titleColor: Color(0xFF21f900),
    ),
    RiskModel(
      title: 'TETH - Riesgo bajo',
      description: 'Anomalías capaces de infligir daño al personal si no se siguen los protocolos adecuados. '
      'Pueden causar bajas individuales, especialmente entre agentes novatos, '
      'y en situaciones de negligencia extrema podrían intentar quebrantar la contención. ',
      iconAsset: 'assets/images/Risk_Teth.webp',
      titleColor: Color(0xFF1aa1ff)
    ),
    RiskModel(
      title: 'HE - Riesgo medio',
      description: 'El nivel donde la gestión comienza a exigir verdadera competencia. '
      'Estas anomalías pueden eliminar fácilmente a uno o dos empleados y, '
      'si la situación se degrada, escalar hacia pérdidas significativas de personal.',
      iconAsset: 'assets/images/Risk_He.webp',
      titleColor: Color(0xFFfef900)
    ),
    RiskModel(
      title: 'WAW - Riesgo alto',
      description: 'Anomalías con capacidad de devastación considerable. '
      'Si escapan, pueden desplazarse por las instalaciones causando bajas numerosas '
      'y daños estructurales severos.',
      iconAsset: 'assets/images/Risk_Waw.webp',
      titleColor: Color(0xFF7c2ff1)
    ),
    RiskModel(
      title: 'ALEPH - Riesgo crítico',
      description: 'El nivel más alto registrado en nuestros archivos. '
      'Una sola anomalía de esta clase tiene el potencial de aniquilar la '
      'totalidad de una instalación si se le deja actuar sin control.',
      iconAsset: 'assets/images/Risk_Aleph.webp',
      titleColor: Color(0xFFFF0000)
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Niveles de Riesgo'),
      body: FooterScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 12),
                ..._hobbies.map(
                  (h) => Card(
                    color: Theme.of(context).colorScheme.surface,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      leading: h.iconAsset != null
                          ? Image.asset(
                              h.iconAsset!,
                              width: 60,
                              height: 60,
                              fit: BoxFit.contain,
                            )
                          : null,
                      title: Text(
                        h.title,
                        style: TextStyle(
                        color: h.titleColor,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        h.description,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
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
