import 'package:flutter/material.dart';
import 'package:flutter_with_bloc/pages/welcome/widgets.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            children: [
              // first page
              appOnboardingPage(
                imagePath: "assets/images/reading.png",
                title: "First See Learning",
                subTitle:
                    "Forget about the paper, now learning all in one place",
              ),
              // second Page
              appOnboardingPage(
                imagePath: "assets/images/man.png",
                title: "Connect with everyone",
                subTitle:
                    "Always keep in touch with your tutor and friends. Let's get connected",
              ),
              // third page
              appOnboardingPage(
                imagePath: "assets/images/boy.png",
                title: "Always Facinated Learning",
                subTitle:
                    "Anywhere, anytime. The time is at your discretion. So study wherever you can",
              ),
            ],
          ),
          const Positioned(
            left: 20,
            bottom: 100,
            child: Text("Widget One"),
          ),
        ],
      ),
    );
  }
}
