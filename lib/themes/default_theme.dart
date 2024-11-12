
import "package:flutter/material.dart";


class DefaultTheme {
  
  const DefaultTheme();

  ColorScheme colorSchemeDark() => const ColorScheme(
    primary: Color.fromRGBO(255, 166, 98, 98),
    secondary: Color.fromARGB(255, 169, 102, 171),
    tertiary: Color.fromARGB(255, 105, 78, 37),
    surface: Color.fromARGB(255, 23, 23, 23),
    surfaceContainer: Color.fromARGB(255, 10, 10, 10),
    surfaceContainerHigh: Color.fromARGB(255, 18, 18, 18),
    surfaceContainerHighest: Color.fromARGB(255, 21, 21, 21),
    error: Color.fromARGB(255, 154, 54, 54),
    onError: Color.fromARGB(255, 255, 255, 255),
    onPrimary: Color.fromARGB(255, 255, 255, 255),
    onSecondary: Color.fromARGB(255, 255, 255, 255),
    onSurface: Color.fromARGB(255, 255, 255, 255),
    onSurfaceVariant: Color.fromARGB(255, 107, 107, 107),
    outline: Colors.black,
    brightness: Brightness.dark,
  );

  ColorScheme colorSchemeLight() => throw UnimplementedError();

  TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    displayLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w300,
      color: colorScheme.onSurface,
    ),
    displayMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: colorScheme.onSurface,
    ),
    displaySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: colorScheme.onSurface,
    ),
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w300,
      color: colorScheme.onSurface,
    ),
    titleMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: colorScheme.onSurface,
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: colorScheme.onSurface,
    ),
    bodyLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      fontFamily: 'Bitter',
      color: colorScheme.onSurface,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: colorScheme.onSurface,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: colorScheme.onSurface,
    ),
    labelLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      fontFamily: 'Bitter',
      color: colorScheme.onSurface,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: 'Bitter',
      color: colorScheme.onSurface,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontFamily: 'Bitter',
      color: colorScheme.onSurface,
    ),
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
  Color get like => const Color.fromARGB(255, 154, 54, 54);
}
