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
            left: 6.w,
            top: 19.h,
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
            top: 80.h,
            child: SizedBox(
              width: 360.w,
              height: 400.h,
              child: const Center(
                child: Column(
                  children: [
                    Text(
                      '엔딩노트\nEnding Note',
                      style: TextStyle(
                        color: Color(0xFF40405C),
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
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
                    name: '남기동',
                    myInfo: '철학 몽둥이 좀 맞아 볼래?',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Friend(
                    name: '황승현',
                    myInfo: "진주시 사랑해요",
                  )
                ],
              ))
        ],
      ),
    );
  }
}
