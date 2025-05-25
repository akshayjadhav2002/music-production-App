import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:music_production/firebase_options.dart';
import 'package:music_production/providers/navigation_provider.dart';
import 'package:music_production/screens/bottom_nav_screen.dart';
import 'package:music_production/providers/service_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return ServiceProvider();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return NavigationProvider();
          },
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false, home: BottomNavScreen()),
    );
  }
}
