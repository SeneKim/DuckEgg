import 'package:flutter/material.dart';
import 'package:hummingbird/components/question_list_component.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_subpage1.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_subpage2.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_subpage3.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_subpage4.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_todayQ%20copy%201.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_todayQ%20copy%2010.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_todayQ%20copy%2011.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_todayQ%20copy%202.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_todayQ%20copy%203.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_todayQ%20copy%204.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_todayQ%20copy%205.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_todayQ%20copy%206.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_todayQ%20copy%207.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_todayQ%20copy%208.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_todayQ%20copy%209.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_todayQ.dart';

class DailyQuestionPage extends StatelessWidget {
  const DailyQuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 360.w,
          height: 1020.h,
          clipBehavior: Clip.antiAlias,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 2, color: Color(0xFFEDEEFF)),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 20.w,
                top: 40.h,
                child: Image.asset("assets/images/mainlogo.png"),
              ),
              Positioned(
                left: 15.w,
                top: 150.h,
                child: Container(
                  width: 330.w,
                  height: 200.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 332.w,
                          height: 350.h,
                          decoration:
                              const BoxDecoration(color: Color(0xFFB1B2FF)),
                        ),
                      ),
                      Positioned(
                        left: -63.w,
                        top: 26.h,
                        child: Opacity(
                          opacity: 0.30,
                          child: Container(
                            width: 171.w,
                            height: 171.h,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFD2DAFF),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 190.w,
                        top: -100.h,
                        child: Opacity(
                          opacity: 0.70,
                          child: Container(
                            width: 171.w,
                            height: 171.h,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFD2DAFF),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 115.w,
                        top: 146.h,
                        child: ElevatedButton(
                          onPressed: () => toDailyQuesToday(context),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              minimumSize: const Size(100, 20),
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(5)),
                          child: const Text(
                            "작성하기",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: -44.w,
                top: 811.h,
                child: Container(
                  width: 232.w,
                  height: 232.h,
                  decoration: const ShapeDecoration(
                    color: Color(0x33B1B2FF),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 69.w,
                top: 876.h,
                child: Container(
                  width: 33.w,
                  height: 33.h,
                  decoration: const ShapeDecoration(
                    color: Color(0x99B1B2FF),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: -22.w,
                top: 405.h,
                child: Opacity(
                  opacity: 0.25,
                  child: Container(
                    width: 499.w,
                    height: 499.h,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFD2DAFF),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ),
              Positioned(
                width: 360.w,
                left: 0,
                top: 70.h,
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        '오늘의 질문\nDaily Question',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF40405C),
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 42,
                      ),
                      const Text(
                        'DAILY QUESTION',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFEEF1FF),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                          height: 0,
                          letterSpacing: 2.80,
                        ),
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                      const Text(
                        '가족끼리 자주 여행가던 장소가 있나요?\n그곳에선 무엇을 했나요?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 47, 47, 68),
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20.w,
                top: 372.h,
                child: const Text(
                  '나의 질문들',
                  style: TextStyle(
                    color: Color(0xFF40405C),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                  left: 15.w,
                  top: 395.h,
                  child: Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        ////////////////////////////////////////////////////////////////////////////////////////
                        ///// 우리 질문 보여주는 곳
                        ///나중에 db에서 질문 list랑 질문 번호 받아와서 여기 parameter로 넣어주면 될 듯?
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () => toDailyQuesToday1(context),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(25)),
                              child: const Qlist(
                                questionNumber: 1,
                                question: "10년 동안 한 음식만 먹는다면, 어..",
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

void toDailyQuesToday(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const TodayQuestionPage()));
}

void toDailyQuesToday1(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const TodayQuestionPage1()));
}

void toDailyQuesToday2(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const TodayQuestionPage2()));
}

void toDailyQuesToday3(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const TodayQuestionPage3()));
}

void toDailyQuesToday4(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const TodayQuestionPage4()));
}

void toDailyQuesToday5(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const TodayQuestionPage5()));
}

void toDailyQuesToday6(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const TodayQuestionPage6()));
}

void toDailyQuesToday7(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const TodayQuestionPage7()));
}

void toDailyQuesToday8(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const TodayQuestionPage8()));
}

void toDailyQuesToday9(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const TodayQuestionPage9()));
}

void toDailyQuesToday10(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const TodayQuestionPage10()));
}

void toDailyQuesToday11(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const TodayQuestionPage11()));
}
