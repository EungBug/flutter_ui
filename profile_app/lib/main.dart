import 'package:flutter/material.dart';
import 'package:profile_app/components/profile_buttons.dart';
import 'package:profile_app/components/profile_count_info.dart';
import 'package:profile_app/components/profile_drawer.dart';
import 'package:profile_app/components/profile_header.dart';
import 'package:profile_app/components/profile_tab.dart';
import 'package:profile_app/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const ProfileDrawer(),
      appBar: _buildProfileAppBar(),
      body: const Column(children: [
        SizedBox(
          height: 20,
        ),
        ProfileHeader(),
        SizedBox(
          height: 20,
        ),
        ProfileCountInfo(),
        SizedBox(
          height: 20,
        ),
        ProfileButtons(),
        Expanded(
          child: ProfileTab(),
        ),
      ]),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      leading: const Icon(Icons.arrow_back_ios),
      title: const Text('Profile'),
      centerTitle: true,
    );
  }
}
