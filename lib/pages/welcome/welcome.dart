import 'package:flutter/material.dart';
import 'package:flutter_with_bloc/pages/welcome/widgets.dart';

class Welcome extends StatelessWidget {
  Welcome({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            children: [
              // first page
              appOnboardingPage(
                _controller,
                imagePath: "assets/images/reading.png",
                title: "First See Learning",
                subTitle:
                    "Forget about the paper, now learning all in one place",
                index: 1,
              ),
              // second Page
              appOnboardingPage(
                _controller,
                imagePath: "assets/images/man.png",
                title: "Connect with everyone",
                subTitle:
                    "Always keep in touch with your tutor and friends. Let's get connected",
                index: 2,
              ),
              // third page
              appOnboardingPage(
                _controller,
                imagePath: "assets/images/boy.png",
                title: "Always Facinated Learning",
                subTitle:
                    "Anywhere, anytime. The time is at your discretion. So study wherever you can",
                index: 3,
              ),
            ],
          ),
          const Positioned(
            left: 20,
            bottom: 100,
            child: Text(""),
          ),
        ],
      ),
    );
  }
}
