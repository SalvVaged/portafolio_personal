import 'package:material_ui/material_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primario = Color(0xFFfc3a3a);
  static const Color secundario = Color(0xFFfffea1);
  static const Color fondo = Color(0xFF161616);

  static ThemeData get lobotomytheme => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: fondo,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primario,
          primary: primario,
          secondary: secundario,
          surface: fondo
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: const AppBarTheme(
          backgroundColor: fondo,
          foregroundColor: secundario,
          elevation: 0,
          centerTitle: true,
        ),
      );
}