import 'package:material_ui/material_ui.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/footer_scroll_view.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titulo: 'Sobre Nosotros'),
      body: FooterScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/Facethefear.jpg',
                    height: 180,
                    width: 360,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              _titulo(context, '¿Quienes somos?'),
              Text(
                'Somos una corporación dedicada a la generación de energía limpia e '
                'inagotable mediante la extracción de Enkephalin a partir de anomalías '
                'contenidas en nuestras instalaciones. Contamos con una red de departamentos especializados, '
                'operados por empleados altamente capacitados que garantizan la estabilidad de la producción '
                'y el cumplimiento estricto de los protocolos de contención. Nuestra misión es simple: '
                'proveer energía al mundo, sin importar el costo. Valoramos la eficiencia, la disciplina y el sacrificio. '
                'En Lobotomy Corporation, cada empleado es un recurso; cada anomalía, una oportunidad. ',
                style: TextStyle(fontSize: 15, height: 1.5, color: Theme.of(context).colorScheme.secondary),
              ),
              const SizedBox(height: 20),
              _titulo(context, '¿Porqué lo hacemos?'),
              Text(
                'Como la Wing que se especializa en energía nosotros proveemos energía para la mayoría de Wings y nidos. ' 
                'En L. Corporation la produción de energía es una prioridad con solo un objetivo: El futuro. '
                'Cada anomalía contenida, cada turno completado y cada sacrificio realizado responde a una sola pregunta: '
                '¿qué estarías dispuesto a entregar para que la humanidad siga adelante? Lo hacemos porque la energía no es un lujo, '
                'es la base sobre la que se sostiene todo lo que conocemos. '
                'y porque el miedo nunca ha detenido a la corporación. Lo hacemos por la ciudad y para la humanidad.',
                style: TextStyle(fontSize: 15, height: 1.5, color: Theme.of(context).colorScheme.secondary),
              ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _titulo(BuildContext context, String texto) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}