import 'package:beitouti_users/features/auth/presentation/pages/auth_page.dart';

import 'package:beitouti_users/features/chef_menu/presentation/pages/chef_menu_page.dart';
import 'package:beitouti_users/features/chefs/presentation/pages/chefs_page.dart';
import 'package:beitouti_users/features/home/presentation/pages/home_page.dart';
import 'package:beitouti_users/features/meals/domain/entities/home_chef.dart';
import 'package:beitouti_users/features/cart/presentation/pages/cart_page.dart';
import 'package:beitouti_users/features/current_subscriptions/presentation/pages/current_subscription_order_page.dart';
import 'package:beitouti_users/features/current_subscriptions/presentation/pages/current_subscriptions_page.dart';
import 'package:beitouti_users/features/home/presentation/pages/home_page.dart';
import 'package:beitouti_users/features/meal/presentation/pages/meal_page.dart';
import 'package:beitouti_users/features/meals/presentation/pages/all_offered_meals_page.dart';
import 'package:beitouti_users/features/order/presentation/pages/order_page.dart';
import 'package:beitouti_users/features/orders/presentation/pages/orders_page.dart';
import 'package:beitouti_users/features/profile/presentation/pages/profile_page.dart';
import 'package:beitouti_users/features/splash/presentation/pages/splash_page.dart';
import 'package:beitouti_users/features/subscription/presentation/pages/subscription_page.dart';
import 'package:flutter/material.dart';

import '../../features/meals/presentation/pages/all_subscriptions_page.dart';

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
            builder: (context) =>  ChefMenuPage(chef: value.arguments as HomeChef));}
      case NameScreen.allOfferedMealsScreen:
        {
          return MaterialPageRoute(
            builder: (_) => const AllOfferedMealsPage(),
          );
        }
      case NameScreen.allSubscriptionsScreen:
        {
          return MaterialPageRoute(
            builder: (_) => const AllSubscriptionsPage(),
          );
        }
      case NameScreen.mealScreen:
        {
          return MaterialPageRoute(
            builder: (_) => MealPage(
              mealId: value.arguments as int,
            ),
          );
        }
      case NameScreen.subscriptionScreen:
        {
          return MaterialPageRoute(
            builder: (_) => SubscriptionPage(
              subscriptionId: value.arguments as int,
            ),
          );
        }
      case NameScreen.cartScreen:
        {
          return MaterialPageRoute(
            builder: (_) => const CartPage(),
          );
        }
      case NameScreen.orderScreen:
        {
          return MaterialPageRoute(
            builder: (_) => OrderPage(orderId: value.arguments as int),
          );
        }
      case NameScreen.ordersScreen:
        {
          return MaterialPageRoute(
            builder: (_) => const OrdersPage(),
          );
        }
      case NameScreen.currentSubscriptionsScreen:
        {
          return MaterialPageRoute(
            builder: (_) => const CurrentSubscriptionsPage(),
          );
        }
      case NameScreen.subscriptionOrdersScreen:
        {
          return MaterialPageRoute(
            builder: (_) => CurrentSubscriptionOrderPage(
              subscriptionId: value.arguments as int,
            ),
          );
        }
      case NameScreen.profileScreen:
        {
          return MaterialPageRoute(
            builder: (_) => const ProfilePage(),
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
  static const String allOfferedMealsScreen = "/all-offered-meals";
  static const String allSubscriptionsScreen = "/all-subscriptions";
  static const String mealScreen = "/meal";
  static const String cartScreen = "/cart";
  static const String subscriptionScreen = "/subscription";
  static const String ordersScreen = "/orders";
  static const String orderScreen = "/order";
  static const String currentSubscriptionsScreen = "/current-subscriptions";
  static const String subscriptionOrdersScreen = "/subscription-orders";
  static const String profileScreen = "/profile";
}
