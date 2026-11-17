import 'package:material_ui/material_ui.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/footer_widget.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titulo: 'Sobre Nosotros'),
      body: SingleChildScrollView(
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
                    width: 180,
                    fit: BoxFit.cover,
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
                'En Lobotomy Corporation, cada empleado es un recurso; cada anomalía, una oportunidad. ' 
                'Recuerde: la seguridad es responsabilidad de todos. ',
                style: TextStyle(fontSize: 15, height: 1.5, color: Theme.of(context).colorScheme.secondary),
              ),
              const SizedBox(height: 20),
              _titulo(context, '¿Qué hago?'),
              Text(
                'Desarrollo aplicaciones móviles multiplataforma con Flutter. '
                'Además, diseño interfaces atractivas y funcionales, aplicando '
                'buenas prácticas de programación y arquitectura limpia.',
                style: TextStyle(fontSize: 15, height: 1.5, color: Theme.of(context).colorScheme.secondary),
              ),
              const SizedBox(height: 30),
              const FooterWidget(),
            ],
          ),
        ),
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