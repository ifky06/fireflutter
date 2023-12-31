import 'package:firebase_core/firebase_core.dart';
import 'package:fireflutter/firebase_options.dart';
// import 'package:fireflutter/pages/login_page.dart';
import 'package:fireflutter/auth/main_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FireFlutter',
      home: MainPage(),
    );
  }
}
