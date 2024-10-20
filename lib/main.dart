import 'package:firebase_core/firebase_core.dart';
import 'package:grocery1/firebase_options.dart'; 
import 'package:flutter/material.dart';
import 'package:grocery1/pages/introduction.dart';
import 'package:provider/provider.dart';
import 'package:grocery1/providers/main_parent_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 13, 154, 242),
        brightness: Brightness.light,
        splashColor: Colors.green,
      ),
      color: Colors.black,
      home: ChangeNotifierProvider(
        create: (context) => MainModel(),
        child: const Intro(),
      ),
    );
  }
}
