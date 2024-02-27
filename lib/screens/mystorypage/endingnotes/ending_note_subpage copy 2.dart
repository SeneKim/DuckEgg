import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EndingNoteFriend1 extends StatefulWidget {
  const EndingNoteFriend1({super.key});

  @override
  State<EndingNoteFriend1> createState() => _EndingNoteFriend1State();
}

class _EndingNoteFriend1State extends State<EndingNoteFriend1> {
  TextEditingController inputController = TextEditingController();

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _loadText();
  }

  _loadText() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedText = prefs.getString('toFriend1');
    inputController.text = savedText!;
  }

  _saveText(String text) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('toFriend1', text);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Container(
          width: 360.w,
          height: 745.75.h,
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
                                offset: Offset(
                                    0, 3.0), // how much shadow will be shown
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
                              image: AssetImage(
                                  'assets/images/ending_note_letter.png'),
                              fit: BoxFit.fill,
                            )),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 50,
                                  right: 40,
                                  top: 2,
                                  bottom: 300,
                                ),
                                child: TextField(
                                  controller: inputController,
                                  onSubmitted: (String value) async {
                                    await showDialog<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text('저장'),
                                          content: Text('입력을 완료하시겠어요?'),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text('예'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  maxLines: null,
                                  onChanged: (text) {
                                    _saveText(text);
                                  },
                                  style: TextStyle(
                                    fontSize: 18.0,
                                  ),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  textInputAction: TextInputAction.done,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
