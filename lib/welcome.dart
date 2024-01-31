import 'package:course/main.dart';
import 'package:flutter/material.dart';
class welcomePage extends StatefulWidget {
  const welcomePage({super.key});

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('welcome page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(SignInPage as BuildContext);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
