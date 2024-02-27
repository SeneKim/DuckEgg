import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hummingbird/screens/settingpage/myvoice_list.dart';
import 'package:hummingbird/screens/settingpage/miketest.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 360.w,
            height: 742.h,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 20.w,
                  top: 40.h,
                  child: Image.asset("assets/images/mainlogo.png"),
                ),
                Positioned(
                  left: 119.w,
                  top: -180.h,
                  child: Opacity(
                    opacity: 0.25,
                    child: Container(
                      width: 473.w,
                      height: 473.h,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFD2DAFF),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -42.w,
                  top: 450.h,
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
                  left: 118.w,
                  top: 59.h,
                  child: const Text(
                    '마이 페이지',
                    style: TextStyle(
                      color: Color(0xFF40405C),
                      fontSize: 28,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w900,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  top: 80.h,
                  child: SizedBox(
                    width: 360.w,
                    height: 250.h,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100.w,
                            height: 100.h,
                            margin: const EdgeInsets.symmetric(vertical: 25),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/non_profile.png'),
                                    fit: BoxFit.cover)),
                          ),
                          const Text(
                            '김 세 희',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0.07,
                              letterSpacing: -0.40,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                minimumSize: const Size(120, 10),
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(3)),
                            child: const Text(
                              "개인정보 수정하기",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 30.w,
                  top: 317.h,
                  child: SizedBox(
                    width: 300.w,
                    height: 75.h,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 48.w,
                          top: 0.h,
                          child: Container(
                            width: 210.w,
                            height: 75.h,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFBFC9FB),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFD2DAFF)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 53.w,
                          top: 12.h,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () => toMyVoiceList(context),
                                  child: Container(
                                    width: 100.w,
                                    height: 50.h,
                                    margin: const EdgeInsets.only(top: 3),
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            color: Colors.black26, width: 1),
                                      ),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/setting_button2.png"),
                                          fit: BoxFit.contain),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () => toMikeTest(context),
                                  child: Container(
                                    width: 100.w,
                                    height: 50.h,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/setting_button3.png"),
                                          fit: BoxFit.contain),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    left: 20.w,
                    top: 420.h,
                    child: Column(
                      children: [
                        Container(
                          width: 320.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 230, 235, 253),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                width: 24.w,
                                height: 24.h,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/call_icon.png")),
                                ),
                              ),
                              const Text(
                                "고객 센터",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          width: 320.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 216, 220, 236),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                width: 24.w,
                                height: 24.h,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/paper_icon.png")),
                                ),
                              ),
                              const Text(
                                "서비스 이용약관",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 320.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 123, 149, 252),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                width: 24.w,
                                height: 24.h,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/info_icon.png")),
                                ),
                              ),
                              const Text(
                                "앱 정보",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void toMyVoiceList(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const MyVoiceList()));
}

void toMikeTest(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const VoiceInputPage()));
}
