import 'package:beitouti_users/features/auth/presentation/pages/auth_page.dart';
import 'package:beitouti_users/features/home/presentation/pages/home_page.dart';
import 'package:beitouti_users/features/splash/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

class GenerateScreen {
  static Route<dynamic> onGenerate(RouteSettings value) {
    String name = value.name ?? '';
    debugPrint("the name is $name");
    switch (name) {
      case NameScreen.splashScreen:
        {
          return MaterialPageRoute(
            builder: (_) => const SplashPage(),
          );
        }
      case NameScreen.authScreen:
        {
          return MaterialPageRoute(
            builder: (_) => const AuthPage(),
          );
        }
      case NameScreen.homeScreen:
        {
          return MaterialPageRoute(
            builder: (_) => const HomePage(),
          );
        }
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('ERROR'),
          ),
        );
      },
    );
  }
}

class NameScreen {
  static const String splashScreen = "/";
  static const String authScreen = "/auth";
  static const String homeScreen = "/home";
}
