import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodayQuestionPage6 extends StatefulWidget {
  const TodayQuestionPage6({super.key});

  @override
  State<TodayQuestionPage6> createState() => _TodayQuestionPage6();
}

class _TodayQuestionPage6 extends State<TodayQuestionPage6> {
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
    String? savedText = prefs.getString('todayQ6');
    inputController.text = savedText!;
  }

  _saveText(String text) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('todayQ6', text);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {},
          child: Icon(
            Icons.share,
            color: Color.fromARGB(255, 158, 140, 188),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: 360.w,
            height: 745.75.h,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 30.w,
                  top: 55.h,
                  child: Image.asset("assets/images/mainlogo.png"),
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
                  left: 15.w,
                  top: 170.h,
                  child: Container(
                    width: 330.w,
                    height: 560.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: -1,
                          top: 0,
                          child: Container(
                            width: 332.w,
                            height: 560.h,
                            decoration:
                                const BoxDecoration(color: Color(0xFFB1B2FF)),
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
                          left: 190.w,
                          top: -100.h,
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
                          left: 15.w,
                          top: 110.h,
                          child: SizedBox(
                            width: 300.w,
                            height: 440.h,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 50,
                                  child: SingleChildScrollView(
                                    child: Container(
                                      width: 300.w,
                                      height: 388.h,
                                      child: Padding(
                                        ///////////////답변 작성
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 6,
                                          top: 0,
                                        ),
                                        child: TextField(
                                          controller: inputController,
                                          maxLines: null,
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
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 1,
                                              color: Color(0xFFD2DAFF)),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        shadows: const [
                                          BoxShadow(
                                            color: Color(0x1E000000),
                                            blurRadius: 10,
                                            offset: Offset(0, 0),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 15.w,
                                  top: 50.h,
                                  child: SizedBox(
                                    width: 270.w,
                                    height: 360.h,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  width: 360.w,
                  left: 2.w,
                  top: 80.h,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          '오늘의 질문\nDaily Question',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF40405C),
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Text(
                          'DAILY QUESTION',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFEEF1FF),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800,
                            height: 0,
                            letterSpacing: 2.80,
                          ),
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '당신은 엄마와 아빠의 모습 중 어떤\n모습을 각각 닮았나요?',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                  letterSpacing: 0.8),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
