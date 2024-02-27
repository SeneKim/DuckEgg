import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 253),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300.h),
            Container(
              width: 240.w,
              height: 135.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/hBird2.gif"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              "Loading...",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
