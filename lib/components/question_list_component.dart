import 'package:flutter/material.dart';
import 'package:hummingbird/screens/mystorypage/mystoryhome.dart';

class Qlist extends StatelessWidget {
  final num questionNumber;
  final String question;

  const Qlist({
    super.key,
    required this.questionNumber,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
          onTap: () => toHomm(context),
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 45,
            width: 380,
            decoration: BoxDecoration(
                color: Colors.white,
                border: const Border.symmetric(
                    horizontal:
                        BorderSide(color: Color(0xFFB5B7FF), width: 1.5)),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 3,
                    spreadRadius: 1,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: Row(children: [
              const SizedBox(
                width: 16,
              ),
              Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/qlist_icon.png'),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "Question $questionNumber",
                style: const TextStyle(
                    color: Colors.black,
                    fontFamily: "Inter",
                    fontSize: 18,
                    fontWeight: FontWeight.w200),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                question,
                style: const TextStyle(
                    color: Colors.black,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400),
              )
            ]),
          )),
    );
  }
}

// 임시로 연결해놓은 것!
// 각 페이지 구축된다면 바꿀겁니동~
void toHomm(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const MyStoryHomePage()));
}
