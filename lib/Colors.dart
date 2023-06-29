import 'main.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final primaryColor = HexColor('#29BB89');
final secondaryColor = HexColor('#32e3a6');
final darkColor = HexColor('#263238');

class Warna {
  Warna._();
  static const MaterialColor warnaUtama =
      MaterialColor(_warnaUtamaPrimaryValue, <int, Color>{
    50: Color(0xFFE5F7F1),
    100: Color(0xFFBFEBDC),
    200: Color(0xFF94DDC4),
    300: Color(0xFF69CFAC),
    400: Color(0xFF49C59B),
    500: Color(_warnaUtamaPrimaryValue),
    600: Color(0xFF24B581),
    700: Color(0xFF1FAC76),
    800: Color(0xFF19A46C),
    900: Color(0xFF0F9659),
  });
  static const int _warnaUtamaPrimaryValue = 0xFF29BB89;

  static const MaterialColor warnaUtamaAccent =
      MaterialColor(_warnaUtamaAccentValue, <int, Color>{
    100: Color(0xFFC6FFE3),
    200: Color(_warnaUtamaAccentValue),
    400: Color(0xFF60FFB1),
    700: Color(0xFF47FFA5),
  });
  static const int _warnaUtamaAccentValue = 0xFF93FFCA;
}
