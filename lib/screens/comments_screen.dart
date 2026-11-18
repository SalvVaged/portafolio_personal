import 'package:material_ui/material_ui.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/footer_scroll_view.dart';

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({super.key});

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _comments = [
    '¡Excelente Wing, me trataron muy bien durante mi trabajo!',
    'Las dificultades por las que pasan los agentes son exageradas',
    'No hablen con el Manager... es una persona rara'
  ];

  void _addComment() {            //la verdad no decidi darme mala vida y deje que se perdieran al salir de la pantalla
    final texto = _controller.text.trim();
    if (texto.isEmpty) return;
    setState(() {
      _comments.insert(0, texto);
      _controller.clear();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Comentarios'),
      body: FooterScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Escribe un comentario...',
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.secondary,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    child: IconButton(
                      icon: Icon(Icons.send, color: Theme.of(context).colorScheme.secondary),
                      onPressed: _addComment,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Card(
                color: Theme.of(context).colorScheme.secondary,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: ListTile(
                  leading: CircleAvatar(backgroundColor: Theme.of(context).colorScheme.surface, 
                  child: Icon(Icons.person, color: Theme.of(context).colorScheme.secondary)),
                  title: Text('Usuario ${_comments.length - index}'),
                  subtitle: Text(_comments[index]),
                ),
              ),
              childCount: _comments.length,
            ),
          ),
        ],
      ),
    );
  }
}
