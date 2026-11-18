import 'package:material_ui/material_ui.dart';
import 'footer_widget.dart';

class FooterScrollView extends StatelessWidget {
  final List<Widget> slivers;

  const FooterScrollView({super.key, required this.slivers});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CustomScrollView(slivers: slivers)),
        const FooterWidget(),
      ],
    );
  }
}
