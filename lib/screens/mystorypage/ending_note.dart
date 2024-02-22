import 'package:flutter/material.dart';
import 'package:hummingbird/components/freind_component.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EndingNotePage extends StatelessWidget {
  const EndingNotePage({super.key});

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
                        offset: Offset(0, 3.0), // how much shadow will be shown
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
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "가족",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Friend(
                  name: '어머니',
                  myInfo: '어머니 안녕하세요. 아들 설경구입니다. ',
                ),
                SizedBox(
                  height: 10,
                ),
                Friend(
                  name: '사랑스러운 우리 딸',
                  myInfo: "딸~~ 아빠야",
                ),
              ],
            ),
          ),

          Positioned(
            left: 20.w,
            top: 430.h,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "친구",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Friend(
                  name: '친구 1',
                  myInfo: '친구야. 경구다. 잘 지내지?',
                ),
                SizedBox(
                  height: 10,
                ),
                Friend(
                  name: '친구 2',
                  myInfo: "짜식 보고 싶다.",
                )
              ],
            ),
          ),
          Positioned(
            left: 20.w,
            top: 615.h,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "동료",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Friend(
                  name: '동료 1',
                  myInfo: '그때 기억나냐? 상사 때문에 너무 힘들어서..',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
