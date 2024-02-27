import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Friend extends StatelessWidget {
  final String name;
  final String myInfo;

  const Friend({
    super.key,
    required this.name,
    required this.myInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 320.w,
      decoration: BoxDecoration(
          color: Colors.white,
          border: const Border.symmetric(
              horizontal: BorderSide(color: Color(0xFFB5B7FF), width: 1.5)),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 3,
              spreadRadius: 2,
              offset: const Offset(0, 3),
            )
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 4,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: const Image(
              image: AssetImage('assets/images/profile_image_logo.png'),
              width: 60,
              height: 60,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(
                    color: Colors.black,
                    fontFamily: "Inter",
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                myInfo,
                style: const TextStyle(
                    color: Colors.black45,
                    fontFamily: "Inter",
                    fontSize: 13,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
        ],
      ),
    );
  }
}
