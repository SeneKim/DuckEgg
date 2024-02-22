import 'package:flutter/material.dart';

class OnelineWindow extends StatelessWidget {
  final String name1, name2;

  const OnelineWindow({
    super.key,
    required this.name1,
    required this.name2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Window(
          name: name1,
        ),
        const SizedBox(
          width: 50,
        ),
        Window(
          name: name2,
        ),
      ],
    );
  }
}

class Window extends StatelessWidget {
  final String name;
  const Window({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
            child: Container(
          height: 213,
          width: 130,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/window.png'),
              fit: BoxFit.fill,
            ),
          ),
        )),
        Positioned(
          top: 30,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: const Image(
              image: AssetImage('assets/images/window_main_logo.png'),
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 140,
          child: Container(
            alignment: Alignment.center,
            width: 130,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Text(
              "Room of $name",
              style: const TextStyle(
                color: Colors.black,
                fontFamily: "Inter",
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
