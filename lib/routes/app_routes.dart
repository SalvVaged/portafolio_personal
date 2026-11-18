import 'package:material_ui/material_ui.dart';
import '../../screens/home_screen.dart';
import '../screens/about_us_screen.dart';
import '../../screens/hobbies_screen.dart';
import '../screens/comments_screen.dart';
import '../screens/contact_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String aboutus = '/about-us';
  static const String hobbies = '/hobbies';
  static const String comentarios = '/comentarios';
  static const String contacto = '/contacto';

  static Map<String, WidgetBuilder> get rutas => {
        home: (_) => const HomeScreen(),
        aboutus: (_) => const AboutUsScreen(),
        hobbies: (_) => const HobbiesScreen(),
        comentarios: (_) => const ComentariosScreen(),
        contacto: (_) => const ContactoScreen(),
      };
}