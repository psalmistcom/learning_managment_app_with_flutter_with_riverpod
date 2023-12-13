import 'package:flutter/material.dart';
import 'package:flutter_with_bloc/common/utils/app_colors.dart';
import 'package:flutter_with_bloc/common/widgets/app_shadows.dart';
import 'package:flutter_with_bloc/common/widgets/text_widgets.dart';

Widget appOnboardingPage(
    {String imagePath = "assets/images/reading.png",
    String title = "",
    String subTitle = ""}) {
  return Column(
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.fitHeight,
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: text24Normal(text: title),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: text16Normal(text: subTitle),
      ),
      _nextButton(),
    ],
  );
}

Widget _nextButton() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
      decoration: appBoxShadow(),
      child: Center(
        child: text16Normal(text: "Next", color: AppColors.primaryBackground),
      ),
    ),
  );
}
