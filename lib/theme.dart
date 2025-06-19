import 'package:flutter/material.dart';

ThemeData getTheme({required Brightness brightness}) => ThemeData(
  useMaterial3: true,
  brightness: brightness,

  scaffoldBackgroundColor: brightness == Brightness.dark ? Colors.black : Colors.white,

  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF6C5CE7),
    brightness: brightness
  ),

  appBarTheme: AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    iconTheme: const IconThemeData(
      size: 24
    ),
    actionsIconTheme: const IconThemeData(
      size: 24
    )
  ),

  scrollbarTheme: ScrollbarThemeData(
    thickness: WidgetStateProperty.all(6),
    radius: const Radius.circular(3)
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5
    ),
    displayMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25
    ),
    displaySmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400
    ),
    headlineLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.25
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500
    ),
    headlineSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15
    ),
    titleLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5
    ),
    titleMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.25
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5
    )
  ),

  dividerTheme: const DividerThemeData(
    color: Color(0xFF506EBF),
    thickness: 1,
    space: 20
  ),

  chipTheme: ChipThemeData(
    shadowColor: Colors.transparent,
    elevation: 0,
    pressElevation: 2,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    brightness: brightness,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: const BorderSide(
        color: Color(0xFF6C5CE7),
        width: 1
      )
    )
  ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      minimumSize: const Size(64, 40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5
      )
    )
  ),

  visualDensity: VisualDensity.adaptivePlatformDensity,

  fontFamily: 'WantedSans'
);

class BouncingScrollBehavior extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const BouncingScrollPhysics();
  }
}