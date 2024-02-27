import 'package:flutter/material.dart';
import 'package:hummingbird/components/freind_component.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hummingbird/screens/mystorypage/endingnotes/ending_note_subpage%20copy%202.dart';
import 'package:hummingbird/screens/mystorypage/endingnotes/ending_note_subpage%20copy%203.dart';
import 'package:hummingbird/screens/mystorypage/endingnotes/ending_note_subpage%20copy%204.dart';
import 'package:hummingbird/screens/mystorypage/endingnotes/ending_note_subpage%20copy.dart';
import 'package:hummingbird/screens/mystorypage/endingnotes/ending_note_subpage.dart';

class EndingNotePage extends StatelessWidget {
  const EndingNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 360.w,
          height: 780.h,
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
                left: -173.w,
                top: 439.h,
                child: Opacity(
                  opacity: 0.20,
                  child: Container(
                    width: 488.w,
                    height: 488.h,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFD2DAFF),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 119.w,
                top: -96.h,
                child: Opacity(
                  opacity: 0.25,
                  child: Container(
                    width: 473.w,
                    height: 473.h,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFD2DAFF),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0.w,
                top: 60.h,
                child: SizedBox(
                  width: 370.w,
                  height: 80.h,
                  child: const Center(
                    child: Text(
                      '엔딩노트\nEnding Note',
                      style: TextStyle(
                        color: Color(0xFF40405C),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        shadows: [
                          Shadow(
                            blurRadius: 5.0, // shadow blur
                            color: Colors.black26, // shadow color
                            offset:
                                Offset(0, 3.0), // how much shadow will be shown
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25.w,
                top: 160.h,
                child: SizedBox(
                  width: 270.w,
                  height: 83,
                  child: const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '가족 친구 동료',
                          style: TextStyle(
                              color: Color(0xFF8747D7),
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 1.2,
                              letterSpacing: 0.8),
                        ),
                        TextSpan(
                          text: '에게 \n남기고 싶은 말을 적어보아요.',
                          style: TextStyle(
                              color: Color(0xFF121214),
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 1.2,
                              letterSpacing: 0.8),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25.w,
                top: 215.h,
                child: Container(
                  height: 36.w,
                  width: 90.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFEEF1FF),
                  ),
                  child: const Text(
                    "친구 목록",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 280.w,
                top: 215.h,
                child: Container(
                  height: 36.w,
                  width: 90.h,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/plus.png"),
                  )),
                ),
              ),
              /////////////////////////////////////////////////////////////////////////////////////////////////
              ////////친구 목록 추가하는 곳
              ///나중에 DB에서 정보 얻어와서 변수로 넣어주면 될 듯!
              Positioned(
                left: 20.w,
                top: 265.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "가족",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: () => toEndingNoteMom(context),
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      child: const Friend(
                        name: '어머니',
                        myInfo: '어머니, 아들 강재혁입니다. 무뚝뚝한 아들놈 데리.. ',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () => toEndingNoteSub(context),
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      child: const Friend(
                        name: '사랑스러운 우리 딸',
                        myInfo: "안녕~ 우리 딸. 놀이공원 가고 싶다는 이야기를 참..",
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                left: 20.w,
                top: 442.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "친구",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () => toEndingNoteFriend1(context),
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      child: const Friend(
                        name: '손석구',
                        myInfo: '얌마 나 재혁이다. 잘 지내지? 요즘 너 핫하더라. T..',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () => toEndingNoteFriend2(context),
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      child: const Friend(
                        name: '조인성',
                        myInfo: "짜식아, 보고 싶다. 우리 어릴 때 옆 집 할머니가 키..",
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20.w,
                top: 640.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "동료",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () => toEndingNotePeer1(context),
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      child: const Friend(
                        name: '김민수',
                        myInfo: '야 그때 기억나냐? 만우절 날에 팀장님이 코스튬..',
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void toEndingNoteSub(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const EndingNoteSub()));
}

void toEndingNoteMom(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const EndingNoteMom()));
}

void toEndingNoteFriend1(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const EndingNoteFriend1()));
}

void toEndingNoteFriend2(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const EndingNoteFriend2()));
}

void toEndingNotePeer1(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const EndingNotePeer1()));
}
