import 'package:flutter/material.dart';
import 'package:login_app/components/logo.dart';
import 'package:login_app/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: const [
        SizedBox(
          height: xlarge_gap,
        ),
        Logo(title: 'Login'),
      ],
    ));
  }
}
