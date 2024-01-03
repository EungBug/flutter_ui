import 'package:flutter/material.dart';
import 'package:login_app/components/logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            const Logo(title: 'EungBug'),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // stack 제거
              },
              child: const Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}
