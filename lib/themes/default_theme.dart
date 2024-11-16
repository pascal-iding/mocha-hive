
import "package:flutter/material.dart";


class DefaultTheme {
  
  const DefaultTheme();

  ColorScheme colorSchemeLight() => const ColorScheme(
    primary: Color.fromARGB(255, 102, 152, 185),
    secondary: Color.fromARGB(255, 154, 54, 54),
    surface: Color.fromARGB(255, 255, 255, 255),
    surfaceContainer: Color.fromARGB(255, 234, 237, 239),
    surfaceContainerHigh: Color.fromARGB(255, 235, 242, 246),
    error: Color.fromARGB(255, 154, 54, 54),
    onError: Color.fromARGB(255, 255, 255, 255),
    onPrimary: Color.fromARGB(255, 255, 255, 255),
    onSecondary: Color.fromARGB(255, 255, 255, 255),
    onSurface: Color.fromARGB(255, 0, 0, 0),
    onSurfaceVariant: Color.fromARGB(255, 107, 107, 107),
    outline: Color.fromARGB(255, 198, 203, 206),
    brightness: Brightness.light,
  );

  ColorScheme colorSchemeDark() => throw UnimplementedError();

  TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    // displayLarge: TextStyle(
    //   fontSize: 24,
    //   fontWeight: FontWeight.w300,
    //   color: colorScheme.onSurface,
    // ),
    // displayMedium: TextStyle(
    //   fontSize: 24,
    //   fontWeight: FontWeight.w400,
    //   color: colorScheme.onSurface,
    //   fontFamily: 'Montserrat',
    // ),
    // displaySmall: TextStyle(
    //   fontSize: 12,
    //   fontWeight: FontWeight.w300,
    //   color: colorScheme.onSurface,
    // ),

    // Headlines, eg Freunde, Gruppen, etc.
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      fontFamily: 'Montserrat',
      color: colorScheme.onSurface,
    ),
    // Willkommen
    titleMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: colorScheme.onSurface,
    ),
    // titleSmall: TextStyle(
    //   fontSize: 12,
    //   fontWeight: FontWeight.w300,
    //   color: colorScheme.onSurface,
    // ),
    // Ins Kino gehen
    bodyLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      fontFamily: 'Lato',
      color: colorScheme.onSurface,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: 'Lato',
      color: colorScheme.onSurface,
    ),
    // Hint text
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      fontFamily: 'Lato',
      color: colorScheme.onSurfaceVariant,
    ),
    // labelLarge: TextStyle(
    //   fontSize: 24,
    //   fontWeight: FontWeight.w500,
    //   fontFamily: 'Bitter',
    //   color: colorScheme.onSurface,
    // ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: colorScheme.onSurface,
    ),
    // labelSmall: TextStyle(
    //   fontSize: 12,
    //   fontWeight: FontWeight.w500,
    //   fontFamily: 'Bitter',
    //   color: colorScheme.onSurface,
    // ),
  );

  ThemeData dark() => theme(colorSchemeDark());
  ThemeData light() => theme(colorSchemeLight());

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    textTheme: textTheme(colorScheme),

    primaryColor: colorScheme.primary,
    brightness: colorScheme.brightness,
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );
}


extension CustomColorScheme on ColorScheme {
  Color get success => const Color.fromARGB(255, 57, 80, 59);
}
