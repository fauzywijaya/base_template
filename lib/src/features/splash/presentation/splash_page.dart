import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: const [
        Icon(Icons.ac_unit),
        Text('Splash Page'),
      ]),
    );
  }
}
