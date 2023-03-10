import 'package:flutter/material.dart';
import 'package:flutter_application_2/router/app_routes.dart';
import 'package:flutter_application_2/theme/app_theme.dart';
import 'package:flutter_application_2/screens/home_screen.dart';

// se quitan los imports y se ponen en el archivo sreen.dart

// se importa el archivo screens.dart
import 'package:flutter_application_2/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: const CardScreen(),
      // para navegar entre rutas
      initialRoute: AppRoutes.home,
      // definir rutas de pantallas
      routes: AppRoutes.getAppRoutes(),
      //por si la ruta no existe
      onGenerateRoute: AppRoutes.onGenerateRoute,
      //temas de estilos
      theme: AppTheme.lightTheme,
    );
  }
}
