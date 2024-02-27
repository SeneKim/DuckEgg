import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AfterService extends StatelessWidget {
  const AfterService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 360.w,
        height: 742.h,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              left: 40.w,
              top: 64.h,
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
              left: 69.w,
              top: 876.h,
              child: Container(
                width: 33.w,
                height: 33.h,
                decoration: const ShapeDecoration(
                  color: Color(0x99B1B2FF),
                  shape: OvalBorder(),
                ),
              ),
            ),
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
              width: 360.w,
              height: 600.h,
              left: 0,
              top: 90.h,
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      '   장례 서비스\n  After Service',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF40405C),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 130,
                    ),
                    Container(
                      height: 340,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                                width: 300,
                                height: 300,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFB8BAFF),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFD2DAFF)),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0x1E000000),
                                      blurRadius: 5.0,
                                      offset: Offset(0, 10),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "상조 업체 찾아보기",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          height: 1.0),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      "View Funeral\nCompany",
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          height: 1),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      "장례를 위해 꼭 필요한 상조회사\n어떤 회사의 서비스가 존재하는지 알려드려요.",
                                      style: TextStyle(
                                          color: Color(0xFF47415B),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          height: 1.5),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                                width: 300,
                                height: 300,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFF2D5D1),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1,
                                        color:
                                            Color.fromARGB(255, 235, 202, 203)),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0x1E000000),
                                      blurRadius: 5,
                                      offset: Offset(0, 5),
                                      spreadRadius: 3,
                                    )
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "장례 안내",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          height: 1.0),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      "About Funeral",
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          height: 1),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      "현대에 진행되는\n다양한 장례 방식에 대해 알려드려요.",
                                      style: TextStyle(
                                          color: Color(0xFF47415B),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          height: 1.5),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                                width: 300,
                                height: 300,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFCF9C9D),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFCF9C9D)),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0x1E000000),
                                      blurRadius: 5,
                                      offset: Offset(5, 5),
                                      spreadRadius: 3,
                                    )
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "장기 기증 서약서 작성",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          height: 1.0),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      "Donation",
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          height: 1),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      "응급 환자에게\n내가 새로운 삶을 줄 수 있어요.",
                                      style: TextStyle(
                                          color: Color(0xFF47415B),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          height: 1.5),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                                width: 300,
                                height: 300,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFD2DAFF),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFD2DAFF)),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0x1E000000),
                                      blurRadius: 5,
                                      offset: Offset(0, 5),
                                      spreadRadius: 3,
                                    )
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "연명의료의향서 작성",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          height: 1.0),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      "Advance directives",
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          height: 1),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      "임종 환자가 되었을 때를 대비하여 스스로\n 연명 치료에 관한 의사를 작성할 수 있어요.",
                                      style: TextStyle(
                                          color: Color(0xFF47415B),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          height: 1.5),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
