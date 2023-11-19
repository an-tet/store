import 'package:flutter/material.dart';

class SplashScreenLayout extends StatelessWidget {
  const SplashScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text('Cargando...'),
          ],
        ),
      ),
    );
  }
}
