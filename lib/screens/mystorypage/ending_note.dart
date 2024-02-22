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
            left: 6,
            top: 19,
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
            left: 210.w,
            top: 71.h,
            child: Container(
              width: 106.w,
              height: 96.h,
              decoration: ShapeDecoration(
                color: const Color(0xFFEEF1FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(21),
                ),
              ),
              child: Image.asset('assets/images/woman.png'),
            ),
          ),
          Positioned(
            left: 30.w,
            top: 115.h,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '엔딩노트',
                  style: TextStyle(
                    color: Color(0xFF40405C),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Ending Note',
                  style: TextStyle(
                    color: Color(0xFF40405C),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
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
                children: [
                  Friend(
                    name: '남기동',
                    myInfo: '철학 몽둥이 좀 맞아 볼래?',
                    imageUrl:
                        'https://cccv-to.s3.ap-northeast-2.amazonaws.com/files/profile/NuegFtYA2bS3u2tEx4KA_AHeo8MEseS',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Friend(
                    name: '황승현',
                    myInfo: "진주시 사랑해요",
                    imageUrl:
                        "https://cdn.chungnamilbo.co.kr/news/photo/202008/556383_153186_15.jpg",
                  )
                ],
              ))
        ],
      ),
    );
  }
}
