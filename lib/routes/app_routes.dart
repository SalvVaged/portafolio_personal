import 'package:material_ui/material_ui.dart';
import '../../screens/home_screen.dart';
import '../screens/about_us_screen.dart';
import '../screens/risk_screen.dart';
import '../screens/comments_screen.dart';
import '../screens/contact_screen.dart';
import '../screens/abno_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String aboutus = '/about-us';
  static const String risk = '/risk';
  static const String comments = '/comments';
  static const String contact = '/contact';
  static const String abno = '/abno';

  static Map<String, WidgetBuilder> get rutas => {
        home: (_) => const HomeScreen(),
        aboutus: (_) => const AboutUsScreen(),
        risk: (_) => const RiskScreen(),
        comments: (_) => const CommentsScreen(),
        contact: (_) => const ContactScreen(),
        abno: (_) => const AbnoScreen(),
      };
}