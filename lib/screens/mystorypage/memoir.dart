import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemoirPage extends StatelessWidget {
  const MemoirPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360.w,
          height: 745.75.h,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 2, color: Color(0xFFEDEEFF)),
            ),
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
                left: -15.w,
                top: 410.h,
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
              Positioned(
                left: -72.w,
                top: 167.h,
                child: Opacity(
                  opacity: 0.60,
                  child: Container(
                    width: 203.w,
                    height: 203.h,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFD2DAFF),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 82.w,
                top: 61.h,
                child: SizedBox(
                  width: 196.w,
                  height: 80.h,
                  child: const Column(
                    children: [
                      Text(
                        '회고록',
                        style: TextStyle(
                          color: Color(0xFF40405C),
                          fontSize: 28,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'My Life Diary',
                        style: TextStyle(
                          color: Color(0xFF40405C),
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20.w,
                top: 170.h,
                child: Container(
                  width: 320.w,
                  height: 260.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Q. 당신은 10대에 어떤 사람이었나요?",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF321C71),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '내 이름 송성근이다.',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
