import 'package:flutter/material.dart';
import 'package:hummingbird/components/question_list_component.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_subpage1.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_subpage2.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_subpage3.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question_subpage/daliy_question_subpage4.dart';

class DailyQuestionPage extends StatelessWidget {
  const DailyQuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 360.w,
        height: 745.75.h,
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
              top: 133.h,
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
                        height: 413.h,
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
                      child: SizedBox(
                        width: 100.w,
                        height: 30.h,
                        child: Positioned(
                          left: 24.w,
                          top: 3.h,
                          child: ElevatedButton(
                            onPressed: () {},
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
              top: 57.h,
              child: const Center(
                child: Column(
                  children: [
                    Text(
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
                    SizedBox(
                      height: 60,
                    ),
                    Text(
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
                      height: 20,
                    ),
                    Text(
                      '어렸을 적 나만의 추억의 장소가 있나요?\n그 장소에 대해 알려주세요!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF40405C),
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w900,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20.w,
              top: 360.h,
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
                top: 380.h,
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
                            onTap: () => toDailyQuesSub1(context),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                            child: const Qlist(
                              questionNumber: 4,
                              question: "꼭 가보고 싶은 나라나 관광지가 있..",
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            onTap: () => toDailyQuesSub1(context),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                            child: const Qlist(
                              questionNumber: 3,
                              question: "최근에 먹었던 것 중에 가장 맛있는..",
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            onTap: () => toDailyQuesSub1(context),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                            child: const Qlist(
                              questionNumber: 2,
                              question: "딸이 갑자기 바퀴벌레로 변한다면..",
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            onTap: () => toDailyQuesSub1(context),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                            child: const Qlist(
                              questionNumber: 1,
                              question: "최근에 한 일 중에 가장 보람찼던..",
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

// 하드 코딩으로 각 page 이동을 구현
void toDailyQuesSub1(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const DailyQuestionSub1()));
}

void toDailyQuesSub2(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const DailyQuestionSub2()));
}

void toDailyQuesSub3(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const DailyQuestionSub3()));
}

void toDailyQuesSub4(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const DailyQuestionSub4()));
}
