import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final String result;
  final String captchaCode;
  final String otp;
  const HomeView({
    super.key,
    required this.result,
    required this.otp,
    required this.captchaCode,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Home"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text("Result:\n\n$result", textAlign: TextAlign.center),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Response",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Captcha Code:$captchaCode",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "OTP Code:$otp",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ));
  }
}
