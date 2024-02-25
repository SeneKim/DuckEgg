import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DailyQuestionSub4 extends StatelessWidget {
  const DailyQuestionSub4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 360.w,
        height: 745.75.h,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              left: 20.w,
              top: 40.h,
              child: Image.asset("assets/images/mainlogo.png"),
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
              left: 15.w,
              top: 133.h,
              child: Container(
                width: 330.w,
                height: 560.h,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: -1,
                      top: 0,
                      child: Container(
                        width: 332.w,
                        height: 560.h,
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
                          width: 171.h,
                          height: 171.w,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD2DAFF),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15.w,
                      top: 133.h,
                      child: SizedBox(
                        width: 300.w,
                        height: 401.h,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 30,
                              child: Container(
                                width: 300.w,
                                height: 300.h,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFD2DAFF)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0x1E000000),
                                      blurRadius: 10,
                                      offset: Offset(0, 0),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            ////////////////////////////////////////////////////////////////////////////////////////////////////
                            /////////////여기에 답변 작성
                            Positioned(
                              left: 15.w,
                              top: 50.h,
                              child: SizedBox(
                                width: 270.w,
                                height: 360.h,
                                child: const Text(
                                  '나는 힘이 없는 다수를 고르겠다.',
                                  style: TextStyle(
                                    color: Color(0xFF2C2C2C),
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0.09,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '오늘은 설경구님의 가치관을 묻는 질문이에요!\n화재 현장에서 구출할 인원의 우선순위를 고르자면?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                              letterSpacing: 0.8),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '\n부와 권력이 있는 소수 vs 힘이 없는 다수',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0.5,
                              letterSpacing: 0.8),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
