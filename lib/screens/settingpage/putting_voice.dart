import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PutVoice extends StatelessWidget {
  const PutVoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360.w,
          height: 741.h,
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
                  '내 목소리',
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
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 320.w,
                        height: 270.h,
                        margin: const EdgeInsets.symmetric(vertical: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/voice_exist.png'),
                                fit: BoxFit.fill)),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20.w,
                top: 420.h,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      width: 320.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 201, 212, 252),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        "내 목소리 등록하기",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      width: 320.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 201, 212, 252),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        "내 목소리 목록",
                        textAlign: TextAlign.center,
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
    );
  }
}
