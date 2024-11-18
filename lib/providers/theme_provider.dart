import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  // Default theme and font
  ThemeData _themeData = _themeA;
  TextStyle _fontStyle = GoogleFonts.roboto();

  // Theme Definitions
  static final _themeA = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(backgroundColor: Colors.blue),
    textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.black)),
  );

  static final _themeB = ThemeData(
    primarySwatch: Colors.red,
    scaffoldBackgroundColor: Colors.grey[200],
    appBarTheme: AppBarTheme(backgroundColor: Colors.red),
    textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.red)),
  );

  static final _themeC = ThemeData(
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(backgroundColor: Colors.green),
    textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
  );

  static final _themeD = ThemeData(
    primarySwatch: Colors.purple,
    scaffoldBackgroundColor: Colors.deepPurple[50],
    appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple),
    textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.deepPurple)),
  );

  static final _themeE = ThemeData(
    primarySwatch: Colors.orange,
    scaffoldBackgroundColor: Colors.orange[50],
    appBarTheme: AppBarTheme(backgroundColor: Colors.orange),
    textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.deepOrange)),
  );

  // Font Definitions
  static final _fontA = GoogleFonts.roboto();
  static final _fontB = GoogleFonts.lobster();
  static final _fontC = GoogleFonts.oswald();
  static final _fontD = GoogleFonts.poppins();
  static final _fontE = GoogleFonts.dancingScript();

  ThemeData get themeData => _themeData;
  TextStyle get fontStyle => _fontStyle;

  void changeTheme(int index) {
    switch (index) {
      case 1:
        _themeData = _themeB;
        break;
      case 2:
        _themeData = _themeC;
        break;
      case 3:
        _themeData = _themeD;
        break;
      case 4:
        _themeData = _themeE;
        break;
      default:
        _themeData = _themeA;
    }
    notifyListeners();
  }

  void changeFont(int index) {
    switch (index) {
      case 1:
        _fontStyle = _fontB;
        break;
      case 2:
        _fontStyle = _fontC;
        break;
      case 3:
        _fontStyle = _fontD;
        break;
      case 4:
        _fontStyle = _fontE;
        break;
      default:
        _fontStyle = _fontA;
    }
    notifyListeners();
  }
}
