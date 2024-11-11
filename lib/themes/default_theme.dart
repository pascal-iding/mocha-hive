
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
    brightness: Brightness.dark,
  );

  ColorScheme colorSchemeLight() => throw UnimplementedError();

  TextTheme textTheme(ColorScheme colorScheme) => const TextTheme(
    
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
