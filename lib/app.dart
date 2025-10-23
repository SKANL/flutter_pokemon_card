import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/di.dart'; // Importa tu Service Locator

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtiene el GoRouter ya configurado desde el DI (GetIt)
    final router = sl<GoRouter>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'PokéCard Dex',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routerConfig: router, // Usa la configuración del router
    );
  }
}