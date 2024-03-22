import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mnaheg_app/Providers/settings_provider.dart';
import 'package:mnaheg_app/UI/HomeScreen/home_screen.dart';
import 'package:mnaheg_app/UI/Splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.blueAccent,
    ),
  );
  runApp(ChangeNotifierProvider(
    create: (context) => SettingsProvider(),
    child: const MyApplication(),
  ));
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.routeName: (context) => const SplashScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
