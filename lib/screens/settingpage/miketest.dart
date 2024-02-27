import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:speech_to_text/speech_to_text.dart';

class VoiceInputPage extends StatefulWidget {
  const VoiceInputPage({super.key});

  @override
  State<VoiceInputPage> createState() => _VoiceInputPageState();
}

class _VoiceInputPageState extends State<VoiceInputPage> {
  // STT Variables
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _wordsSpoken = "";
  bool listening = false;

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize(
        finalTimeout: Duration(milliseconds: 1800));
    setState(() {});
  }

  Future<void> _startListening() async {
    await _speechToText.listen(
      onResult: _onSpeechResult,
      pauseFor: Duration(milliseconds: 4200),
      localeId: 'ko-KR',
    );
    await Future.delayed(Duration(milliseconds: 2000));
    _speechToText.changePauseFor(Duration(milliseconds: 2200));
    setState(() {
      if (_speechEnabled) {
        setState(() {
          listening = true;
        });
      } else {
        setState(() {
          listening = false;
        });
      }
    });
  }

  Future<void> _stopListening() async {
    await _speechToText.stop();
    setState(() {
      listening = false;
    });
  }

  void _onSpeechResult(result) async {
    setState(() {
      _wordsSpoken = result.recognizedWords;
    });
  }

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
            child: Stack(children: [
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
                left: 52.w,
                top: 70.h,
                child: const Text(
                  '목소리 등록하기',
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
                left: 20.w,
                top: 120.h,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 320.w,
                        height: 270.h,
                        margin: const EdgeInsets.symmetric(vertical: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/checkpoint.png'),
                                fit: BoxFit.fill)),
                      ),
                      const SizedBox(height: 120),
                      InkWell(
                        onTap: () async {
                          await _startListening();
                          await Future.delayed(Duration(seconds: 6));
                          await _stopListening();
                        },
                        child: AvatarGlow(
                          glowCount: 3,
                          glowColor: Color.fromARGB(255, 210, 169, 166),
                          glowRadiusFactor: 0.3,
                          animate: listening,
                          child: Container(
                            width: 100.w,
                            height: 100.h,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/record.png'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
