import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app.dart';
import 'di.dart';

void main()  async {
  // Asegúrate de inicializar el binding antes de usar SystemChrome
  WidgetsFlutterBinding.ensureInitialized();

  // Oculta la barra de estado en toda la app (modo inmersivo)
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  // Configure dependency injection for the app
  await initDI();
  runApp(const App());
}
