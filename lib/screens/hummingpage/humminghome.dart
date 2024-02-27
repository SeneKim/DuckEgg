import 'dart:convert';

import 'package:hummingbird/components/window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hummingbird/controllers/completion_beforeUI.dart';
import 'package:hummingbird/provider/provider.dart';
import 'package:hummingbird/screens/hummingpage/calling.dart';
import 'package:hummingbird/screens/hummingpage/splash.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class HummingHomePage extends StatefulWidget {
  const HummingHomePage({super.key});

  @override
  State<HummingHomePage> createState() => _HummingHomePageState();
}

class _HummingHomePageState extends State<HummingHomePage> {
  @override
  Widget build(BuildContext context) {
    const String chatRoomIDURL = "api/user/chatroom";
    return SingleChildScrollView(
      child: Container(
        width: 360.w,
        height: 880.h,
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
                  height: 522.14.h,
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
                  height: 692.14.h,
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
                  height: 676.67.h,
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
                  height: 704.16.h,
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
                  height: 740.16.h,
                  decoration: ShapeDecoration(
                    color: const Color(0xB2D9D9D9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
              ),
            ),
            Positioned(
              left: -230.18.w,
              top: 508.78.h,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(-0.70),
                child: Container(
                  width: 68.11.w,
                  height: 740.16.h,
                  decoration: ShapeDecoration(
                    color: const Color(0xB2D9D9D9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 39.w,
              top: 80.h,
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'VOICE ROOM',
                        style: TextStyle(
                          color: Color(0xFF40405C),
                          fontSize: 28,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const Text(
                        '그리운 사람\n보고싶은 사람\n만나고 싶은 사람의 목소리를 들을 수 있어요',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF40405C),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                  child: const Window(
                                    name: "김남길",
                                  ),
                                  onDoubleTap: () async {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (_) => SplashScreen()),
                                    );
                                    await Future.delayed(
                                        const Duration(seconds: 3));
                                    Navigator.of(context).pop();
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return const Calling(
                                            buttonText: "김 남 길",
                                            freindID:
                                                "65c8807fa626b03071683914",
                                          );
                                        });
                                  }),
                              SizedBox(
                                width: 50.w,
                              ),
                              InkWell(
                                  child: const Window(
                                    name: "이채은",
                                  ),
                                  onDoubleTap: () async {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (_) => SplashScreen()),
                                    );
                                    await Future.delayed(
                                        const Duration(seconds: 3));
                                    Navigator.of(context).pop();
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return const Calling(
                                            buttonText: "이 채 은",
                                            freindID:
                                                "65c87f8a6e43249408531466",
                                          );
                                        });
                                  }),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
