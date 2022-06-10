import 'package:beitouti_users/app/app.dart';
import 'package:flutter/material.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const App());
}
