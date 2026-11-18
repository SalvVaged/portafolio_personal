import 'package:material_ui/material_ui.dart';
import '../models/proyect_model.dart';

class SectionCard extends StatelessWidget {
  final SectionModel section;

  const SectionCard({
    super.key,
    required this.section,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.surface,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.90),
          child: section.iconAsset != null
              ?Image.asset(section.iconAsset!, width: 30, height: 30, fit: BoxFit.contain)
              :Icon(section.icon, color: Theme.of(context).colorScheme.secondary),
        ),
        title: Text(
          section.title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        subtitle: Text(
          section.subtitle,
          style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: section.onTap,
      ),
    );
  }
}