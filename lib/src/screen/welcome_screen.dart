import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_app/src/screen/todo_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static String routename = 'WelcomeScreen';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            Text("Welcome to Todo App"),
            ElevatedButton(
              onPressed: () {
                context.goNamed(TodoScreen.routename);
              },
              child: Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}
