import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EndingNoteSub extends StatelessWidget {
  const EndingNoteSub({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 360.w,
        height: 740.75.h,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              left: -22.w,
              top: 405.h,
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
              left: -63.w,
              top: 26.h,
              child: Opacity(
                opacity: 0.30,
                child: Container(
                  width: 171.w,
                  height: 171.h,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFD2DAFF),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 220.w,
              top: -40.h,
              child: Opacity(
                opacity: 0.70,
                child: Container(
                  width: 171.h,
                  height: 171.w,
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
                width: 360.w,
                height: 700.h,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
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
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "소중한 사람에게 하고 싶은 말을 적어보아요.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 500.h,
                        width: 400.w,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image:
                              AssetImage('assets/images/ending_note_letter.png'),
                          fit: BoxFit.fill,
                        )),
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "To. 사랑스러운 우리 딸에게",
                                style: TextStyle(
                                    color: Color(0xFF321C71),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "사랑하는 딸~~~! 너무 보고 싶다.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 300,
                              ),
                              Text(
                                "From. 너를 항상 사랑하는 아빠가",
                                style: TextStyle(
                                    color: Color(0xFF321C71),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800),
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
