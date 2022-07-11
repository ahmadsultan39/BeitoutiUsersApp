import 'package:beitouti_users/features/auth/presentation/pages/auth_page.dart';
import 'package:beitouti_users/features/chef_menu/presentation/pages/chef_menu_page.dart';
import 'package:beitouti_users/features/chefs/presentation/pages/chefs_page.dart';
import 'package:beitouti_users/features/home/presentation/pages/home_page.dart';
import 'package:beitouti_users/features/meals/domain/entities/home_chef.dart';
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
      case NameScreen.chefsScreen:
        {
          return MaterialPageRoute(
            builder: (_) => const ChefsPage(),
          );
        }
      case NameScreen.chefScreen:
        {
          return MaterialPageRoute(
            builder: (context) =>  ChefMenuPage(chef: value.arguments as HomeChef),
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
  static const String chefsScreen = "/chefs";
  static const String chefScreen = "/chef";
}
