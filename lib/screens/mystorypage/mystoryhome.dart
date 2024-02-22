import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hummingbird/screens/mystorypage/after_service.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question.dart';
import 'package:hummingbird/screens/mystorypage/ending_note.dart';
import 'package:hummingbird/screens/mystorypage/memoir.dart';

class MyStoryHomePage extends StatelessWidget {
  const MyStoryHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 745.75.h,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: [
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

          ////////////////////////////////////////////////////////////////////////////
          ///// 우리 로고 위치 !!!!!!!! 기억하라
          Positioned(
            left: 6.w,
            top: 25.h,
            child: Image.asset('assets/images/mainlogo.png'),
          ),
          Positioned(
            left: 34.w,
            top: 47.h,
            child: const Text(
              'About Me',
              style: TextStyle(
                color: Color(0xFF40405C),
                fontSize: 28,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 39.w,
            top: 84.h,
            child: const Text(
              '설경구님, 안녕하세요 \n나를 기록해 보아요',
              style: TextStyle(
                color: Color(0xFF40405C),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),

          Positioned(
            left: 0.w,
            top: 133.h,
            child: SizedBox(
              width: 360.w,
              height: 94.h,
              child: Stack(
                children: [
                  Positioned(
                    left: 14.w,
                    top: 0.h,
                    child: Container(
                      width: 332.w,
                      height: 94.h,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 332.w,
                              height: 142.h,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFB1B2FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                              ),
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
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Center(
                      child: SizedBox(
                        width: 360.w,
                        height: 100.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'LIFE DIARY',
                              style: TextStyle(
                                color: Color(0xFFEEF1FF),
                                fontSize: 15,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w800,
                                height: 0,
                                letterSpacing: 2.80,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              '설경구님의 일생에 대한 일기를 작성할 수 있어요!',
                              style: TextStyle(
                                color: Color(0xFF40405C),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            ElevatedButton(
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
                                "바로가기",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              left: 24.w,
              top: 245.h,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LIFE LOGS",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF8E8ECC),
                    ),
                  ),
                  Text(
                    "Looking for",
                    style: TextStyle(
                      color: Color(0xFF40405C),
                      fontSize: 24,
                    ),
                  ),
                ],
              )),
          //////////////////////////////////////////////////////////////////////////////////
          // 우리 기능 리스트로 보여주는 곳!
          // image button 만들어서 넣기
          // 귀찮아서 이미지 가져다 붙여버림
          Positioned(
            left: 15.w,
            top: 300.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => toDailyQ(context),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 330.w,
                      height: 105.h,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/todays_question.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => toEndingNote(context),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 330.w,
                      height: 105.h,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/ending_note.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => toMemoir(context),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 330.w,
                      height: 105.h,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/diary.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => toAfterService(context),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 330.w,
                      height: 105.h,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/after_service.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 255.w,
            top: 49.h,
            child: Container(
              height: 75.h,
              width: 75.w,
              padding: const EdgeInsets.only(right: 0.25, bottom: 0.11),
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),
              child: Image.asset('assets/images/realman_profile.png'),
            ),
          ),

          Positioned(
            left: 71.w,
            top: 922.h,
            child: Container(
              width: 28.w,
              height: 4.h,
              decoration: ShapeDecoration(
                color: const Color(0xFF8E8ECC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void toDailyQ(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const DailyQuestionPage()));
}

void toEndingNote(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const EndingNotePage()));
  //Navigator.push(
  //    context, MaterialPageRoute(builder: (context) => const EndingNotePage()));
}

void toMemoir(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const MemoirPage()));
}

void toAfterService(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const AfterService()));
}
