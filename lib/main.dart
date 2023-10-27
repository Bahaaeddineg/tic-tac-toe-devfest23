import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'logic/routing/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp(routes: AppRouter()));
}


class MyApp extends StatelessWidget {
  final AppRouter routes;
  MyApp({required this.routes});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: routes.onGenerateRoute,
    );
  }
}
