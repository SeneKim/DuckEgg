import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MemoirPage extends StatefulWidget {
  const MemoirPage({super.key});

  @override
  State<MemoirPage> createState() => _MemoirPageState();
}

class _MemoirPageState extends State<MemoirPage> {
  TextEditingController inputController = TextEditingController();
  TextEditingController inputController2 = TextEditingController();
  TextEditingController inputController3 = TextEditingController();

  @override
  void dispose() {
    inputController.dispose();
    inputController2.dispose();
    inputController3.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _loadText();
    _loadText2();
    _loadText3();
  }

  _loadText() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedText = prefs.getString('firstMemoir');
    inputController.text = savedText!;
  }

  _saveText(String text) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('firstMemoir', text);
  }

  _loadText2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedText2 = prefs.getString('savedText2');
    inputController2.text = savedText2!;
  }

  _saveText2(String text) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('savedText2', text);
  }

  _loadText3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedText2 = prefs.getString('savedText3');
    inputController2.text = savedText2!;
  }

  _saveText3(String text) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('savedText3', text);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 360.w,
                height: 1440.h,
                clipBehavior: Clip.antiAlias,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Color(0xFFEDEEFF)),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 20.w,
                      top: 40.h,
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
                      left: -15.w,
                      top: 410.h,
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
                      left: 71.w,
                      top: 922.h,
                      child: Container(
                        width: 28.w,
                        height: 4.h,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF8E8ECC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: -72.w,
                      top: 167.h,
                      child: Opacity(
                        opacity: 0.60,
                        child: Container(
                          width: 203.w,
                          height: 203.h,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD2DAFF),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 82.w,
                      top: 61.h,
                      child: SizedBox(
                        width: 196.w,
                        height: 80.h,
                        child: const Column(
                          children: [
                            Text(
                              '회고록',
                              style: TextStyle(
                                color: Color(0xFF40405C),
                                fontSize: 28,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'My Life Diary',
                              style: TextStyle(
                                color: Color(0xFF40405C),
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20.w,
                      top: 170.h,
                      child: Container(
                        width: 320.w,
                        height: 400.h,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset: const Offset(
                                  0, 5), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          border: Border.all(
                              color: const Color(0xFF321C71).withOpacity(0.4),
                              width: 2.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10.h,
                                ),
                                const Text(
                                  "Q. 가족과의 추억 중 가장 기억에 남는 것은\n  무엇인가요?",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Inter",
                                    color: Color(0xFF321C71),
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 4,
                                  ),
                                  child: TextField(
                                    keyboardType: TextInputType.text,
                                    controller: inputController,
                                    onSubmitted: (String value) async {
                                      await showDialog<void>(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: const Text('저장'),
                                            content: const Text('입력을 완료하시겠어요?'),
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
                                    //keyboardType: TextInputType.emailAddress,
                                    maxLines: null,
                                    onChanged: (text) {
                                      _saveText(text);
                                    },
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                    textInputAction: TextInputAction.done,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
