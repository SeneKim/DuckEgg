import 'package:flutter/material.dart';
import 'package:hummingbird/components/question_list_component.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DailyQuestionPage extends StatelessWidget {
  const DailyQuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 745.75.h,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, color: Color(0xFFEDEEFF)),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 6,
            top: 19,
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
                      decoration: const BoxDecoration(color: Color(0xFFB1B2FF)),
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
                      height: 25.h,
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
                              minimumSize: const Size(100, 10),
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(5)),
                          child: const Text(
                            "작성하기",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
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
                    height: 50,
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
                    height: 40,
                  ),
                  Text(
                    '어렸을 적 나만의 추억의 장소가 있나요?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF40405C),
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      height: 0.10,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    '그 장소에 대해 알려주세요!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF40405C),
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      height: 0.10,
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20.w,
            top: 380.h,
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
              top: 410.h,
              child: const Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    ////////////////////////////////////////////////////////////////////////////////////////
                    ///// 우리 질문 보여주는 곳
                    ///나중에 db에서 질문 list랑 질문 번호 받아와서 여기 parameter로 넣어주면 될 듯?
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Qlist(
                          questionNumber: 4,
                          question: "졸려 뒤지겠다.",
                        ),
                        SizedBox(height: 10),
                        Qlist(
                          questionNumber: 3,
                          question: "김치 볶음밥 맛있다.",
                        ),
                        SizedBox(height: 10),
                        Qlist(
                          questionNumber: 2,
                          question: "술이 달아~",
                        ),
                        SizedBox(height: 10),
                        Qlist(
                          questionNumber: 1,
                          question: "집에 가고 싶다.",
                        ),
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
