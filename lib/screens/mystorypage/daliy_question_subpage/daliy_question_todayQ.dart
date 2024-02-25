import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodayQuestionPage extends StatelessWidget {
  const TodayQuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(
          Icons.share,
          color: Color.fromARGB(255, 158, 140, 188),
        ),
        backgroundColor: Colors.white,
      ),
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
                              top: 60,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\n당신의 어릴적 꿈은 무엇인가요?\n만약 그 꿈과 다른 삶을 살아가고 \n있다면 그 이유는 무엇인가요?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                              letterSpacing: 0.8),
                          textAlign: TextAlign.center,
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
