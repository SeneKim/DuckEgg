import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_todayQ.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(children: [
        Positioned(child: Image.asset("assets/images/Home_Image.png")),
        Positioned(
          left: 222.w,
          top: 520.h,
          child: AvatarGlow(
              glowRadiusFactor: 0.3,
              child: InkWell(
                  onTap: () => toTodayQuestion(context),
                  child: SvgPicture.asset(("assets/icons/todayletter.svg")))),
        )
      ]),
    );
  }
}

void toTodayQuestion(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const TodayQuestionPage()));
}
