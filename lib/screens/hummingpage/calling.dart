import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hummingbird/screens/hummingpage/humminghome.dart';

void main() {
  runApp(const CallingPage());
}

class CallingPage extends StatelessWidget {
  const CallingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Calling(),
        ),
      ),
    );
  }
}

class Calling extends StatelessWidget {
  const Calling({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 360.w,
          height: 800.h,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            color: Color(0xFFF6EEFE),
          ),
          child: Stack(
            children: [
              Positioned(
                left: -18.w,
                top: 210.h,
                child: Container(
                  width: 400.w,
                  height: 355.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/calling_main_image.gif"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: -5,
                child: Container(
                  width: 360.w,
                  height: 224.h,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [
                        Color(0xFFC1B5CC),
                        Color(0xFFB9AFC0),
                      ],
                    ),
                  ),
                ),
              ),
              /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              /// blur container
              ///
              Positioned(
                left: -7.w,
                top: 152.h,
                child: Container(
                  width: 374.w,
                  height: 133.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/blur_layer_2.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 0.w,
                  top: 88.h,
                  width: 360.w,
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '전 윤 찬',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                  blurRadius: 4.0,
                                  color: Colors.black45,
                                  offset: Offset(2, 2))
                            ],
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '3:04',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  )),

              Positioned(
                left: 54.w,
                top: 680.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/bluetooth.png"),
                    const SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                      onPressed: () => toFriendList(context),
                      style:
                          ElevatedButton.styleFrom(shape: const CircleBorder()),
                      child: Image.asset("assets/images/phone_icon.png"),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Image.asset("assets/images/speaker.png")
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

void toFriendList(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const HummingHomPage()));
}
