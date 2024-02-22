import 'package:flutter/material.dart';

class Friend extends StatelessWidget {
  final String name;
  final String myInfo;
  final String imageUrl;

  const Friend({
    super.key,
    required this.name,
    required this.myInfo,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        // 사각형 deco
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 70,
          width: 370,
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
            children: [
              const SizedBox(
                width: 16,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(
                  image: NetworkImage(imageUrl),
                  width: 45,
                  height: 45,
                ),
              ),
              const SizedBox(
                width: 15,
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
                        fontSize: 12,
                        fontWeight: FontWeight.w100),
                  ),
                  Text(
                    myInfo,
                    style: const TextStyle(
                        color: Colors.black45,
                        fontFamily: "Inter",
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
