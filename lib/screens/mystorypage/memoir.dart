import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemoirPage extends StatelessWidget {
  const MemoirPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 360.w,
            height: 740.75.h,
            clipBehavior: Clip.antiAlias,
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 2, color: Color(0xFFEDEEFF)),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 20.w,
                  top: 40.h,
                  child: Image.asset("assets/images/mainlogo.png"),
                ),
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
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 5), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      border: Border.all(
                          color: const Color(0xFF321C71).withOpacity(0.4),
                          width: 2.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                            child: Text(
                              "Q. 당신은 10대에 어떤 사람이었나요?",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Inter",
                                color: Color(0xFF321C71),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              '타워의 설경구의 배역에 대한 회고록을 작성해주세요.',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          )
                        ]),
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
