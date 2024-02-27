import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hummingbird/screens/mystorypage/after_service.dart';
import 'package:hummingbird/screens/mystorypage/daliy_question.dart';
import 'package:hummingbird/screens/mystorypage/ending_note.dart';
import 'package:hummingbird/screens/mystorypage/memoir.dart';
import 'package:hummingbird/screens/mystorypage/endingnotes/ending_note_subpage.dart';

class MyStoryHomePage extends StatelessWidget {
  const MyStoryHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 360.w,
          height: 785.h,
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
                left: 8.w,
                top: 32.h,
                child: Image.asset('assets/images/mainlogo.png'),
              ),
              Positioned(
                left: 40.w,
                top: 66.h,
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
                left: 42.w,
                top: 96.h,
                child: const Text(
                  '김남길님, 안녕하세요 \n나를 기록해 보아요',
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
                top: 150.h,
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 14.h,
                                ),
                                Text(
                                  'My Story Page',
                                  style: TextStyle(
                                    color: Color(0xFFEEF1FF),
                                    fontSize: 22,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w800,
                                    height: 0,
                                    letterSpacing: 2.80,
                                  ),
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Text(
                                  '여기서 김남길님의 이야기를 들려주세요!',
                                  style: TextStyle(
                                    color: Color(0xFF40405C),
                                    fontSize: 18,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
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
                  top: 260.h,
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
                left: 10.w,
                top: 320.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => toDailyQ(context),
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 340.w,
                          height: 110.h,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/todays_question.png'),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => toEndingNote(context),
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 340.w,
                          height: 110.h,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/ending_note.png'),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => toMemoir(context),
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 340.w,
                          height: 110.h,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/diary.png'),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => toAfterService(context),
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 340.w,
                          height: 110.h,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/after_service.png'),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 255.w,
                top: 62.h,
                child: Container(
                  height: 75.h,
                  width: 75.w,
                  padding: const EdgeInsets.only(right: 0.25, bottom: 0.11),
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/namgil.png'))),
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
        ),
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
}

void toMemoir(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const MemoirPage()));
}

void toAfterService(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const AfterService()));
}

void toEndingNoteSub(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const EndingNoteSub()));
}
