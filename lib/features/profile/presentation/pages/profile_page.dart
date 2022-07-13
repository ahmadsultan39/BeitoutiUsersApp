import 'package:beitouti_users/core/util/generate_screen.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, NameScreen.currentSubscriptionsScreen);
          },
          child: const Center(
            child: Text("CurrentSubscriptions"),
          ),
        ),
      ],
    );
  }
}
