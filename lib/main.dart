import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:food_app/services/auth/login_or_register.dart';
import 'package:food_app/firebase_options.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:food_app/services/auth/auth_gate.dart';
import 'package:food_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);


  runApp(
    // theme Provider
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),

      // resaurant provider
      ChangeNotifierProvider(create: (context) => Restaurant()),
    ],
    child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       home: const AuthGate(),
       theme: Provider.of<ThemeProvider>(context).themeData,
       );
  }
}
