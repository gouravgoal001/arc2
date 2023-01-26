import 'package:flutter/material.dart';
import 'package:augmented_reality_commerce/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async
{
  try
  {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  }
  catch (errorMsg)
  {
print("Error: " + errorMsg.toString());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Augmented Reality Commerce',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
