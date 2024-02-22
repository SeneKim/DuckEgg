import 'package:hummingbird/components/window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HummingHomPage extends StatelessWidget {
  const HummingHomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360.w,
          height: 745.75.h,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////뒤에 햇살 들어오는 듯한 효과, 음영
          child: Stack(
            children: [
              Positioned(
                left: 59.95.w,
                top: -5.92.h,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(-0.70),
                  child: Container(
                    width: 224.12.w,
                    height: 474.86.h,
                    decoration: ShapeDecoration(
                      color: const Color(0xB2D9D9D9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -6.05.w,
                top: 50.93.h,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(-0.70),
                  child: Container(
                    width: 10.44.w,
                    height: 629.47.h,
                    decoration: ShapeDecoration(
                      color: const Color(0xB2D9D9D9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -27.w,
                top: 157.71.h,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(-0.70),
                  child: Container(
                    width: 10.44.w,
                    height: 615.40.h,
                    decoration: ShapeDecoration(
                      color: const Color(0xB2D9D9D9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -193.w,
                top: 315.71.h,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(-0.70),
                  child: Container(
                    width: 10.44.w,
                    height: 640.40.h,
                    decoration: ShapeDecoration(
                      color: const Color(0xB2D9D9D9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -85.18.w,
                top: 308.78.h,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(-0.70),
                  child: Container(
                    width: 68.11.w,
                    height: 650.40.h,
                    decoration: ShapeDecoration(
                      color: const Color(0xB2D9D9D9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0.w,
                top: 63.h,
                child: SizedBox(
                  width: 360.w,
                  height: 500.h,
                  child: const Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'VOICE ROOM',
                            style: TextStyle(
                              color: Color(0xFF40405C),
                              fontSize: 28,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          Text(
                            '그리운 사람\n보고싶은 사람\n만나고 싶은 사람 의 목소리를 들을 수 있어요',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF40405C),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OnelineWindow(
                                name1: "기동!",
                                name2: "남기동",
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OnelineWindow(
                                name1: "황승현",
                                name2: "송성근",
                              ),
                            ],
                          )
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
