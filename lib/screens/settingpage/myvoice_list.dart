import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyVoiceList extends StatelessWidget {
  const MyVoiceList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 360.w,
            height: 742.h,
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
                  left: 119.w,
                  top: -180.h,
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
                  left: -42.w,
                  top: 450.h,
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
                  left: 43.w,
                  top: 47.h,
                  child: const Text(
                    '내 목소리 목록',
                    style: TextStyle(
                      color: Color(0xFF40405C),
                      fontSize: 28,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w900,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 20.w,
                  top: 120.h,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 11, horizontal: 20),
                        width: 320.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 201, 212, 252),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "230211 목소리",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 11, horizontal: 20),
                        width: 320.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 170, 187, 247),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "230519 목소리",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 11, horizontal: 20),
                        width: 320.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 180, 165, 245),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "230621 목소리",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 11, horizontal: 20),
                        width: 320.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 225, 206, 241),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "230909 목소리",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 11, horizontal: 20),
                        width: 320.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 213, 189, 230),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "231131 목소리",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
