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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
