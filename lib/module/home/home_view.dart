import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final String result;
  const HomeView({
    super.key,
    required this.result,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Result:\n\n$result",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ));
  }
}
