import 'package:material_ui/material_ui.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/footer_scroll_view.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        titulo: 'Firma del Desarrollador',
        showButtonContact: false,
      ),
      body: FooterScrollView(
        slivers: [
          SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 20),
              CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                radius: 60,
                child: Icon(Icons.person, size: 60, color: Theme.of(context).colorScheme.surface),
              ),
              const SizedBox(height: 20),
              Text(
                'Ricardo Noriega',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, 
                color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              Text('Estudiante Programación 3, Flutter',
                  style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.secondary),
              ),
              const SizedBox(height: 30),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  children: [
                    ListTile(
                      tileColor: Theme.of(context).colorScheme.secondary,
                      textColor: Theme.of(context).colorScheme.surface,
                      iconColor: Theme.of(context).colorScheme.surface,
                      leading: const Icon(Icons.email),
                      title: const Text('rnoriega1506@gmail.com'),
                    ),
                    ListTile(
                      tileColor: Theme.of(context).colorScheme.secondary,
                      textColor: Theme.of(context).colorScheme.surface,
                      iconColor: Theme.of(context).colorScheme.surface,
                      leading: const Icon(Icons.phone),
                      title: const Text('+58 4123583059'),
                    ),
                    ListTile(
                      tileColor: Theme.of(context).colorScheme.secondary,
                      textColor: Theme.of(context).colorScheme.surface,
                      iconColor: Theme.of(context).colorScheme.surface,
                      leading: const Icon(Icons.code),
                      title: const Text('github.com/SalvVaged'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Firma: "Ricardo Noriega - 2026"',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
        ),
          ),
        ],
      ),
    );
  }
}
