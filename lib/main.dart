import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lunz_store/pages/LoginPage.dart';
import 'package:lunz_store/pages/RegisterPage.dart';
import 'package:lunz_store/pages/HomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(LunzStoreApp());
}

class LunzStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lunz Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
