import 'dart:convert';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hummingbird/controllers/getcall.dart';
import 'package:hummingbird/controllers/postcall.dart';
import 'package:hummingbird/provider/provider.dart';
import 'package:hummingbird/screens/hummingpage/humminghome.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'dart:async';

import 'package:speech_to_text/speech_to_text.dart';

class Calling extends StatefulWidget {
  final String buttonText;
  final String freindID;
  const Calling({Key? key, required this.buttonText, required this.freindID})
      : super(key: key);

  @override
  State<Calling> createState() => _CallingState();
}

class _CallingState extends State<Calling> {
  //timer
  Timer? _timer;
  int _elapsedSeconds = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _elapsedSeconds++;
      });
    });
    _initSpeech();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  // STT Variables
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _wordsSpoken = "";

  // Commuication Variables
  final String chatroomID = "65cda35223f8190950c4a7d4";
  String? taskID;
  bool doingDia = true;
  bool doingAns = false;

  // @override
  // void initState() {
  //   super.initState();
  //   _initSpeech();
  // }

  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize(
        finalTimeout: Duration(milliseconds: 1800));
    setState(() {});
  }

  Future<void> _startListening() async {
    await _speechToText.listen(
      onResult: _onSpeechResult,
      pauseFor: Duration(milliseconds: 3450),
      localeId: 'ko-KR',
    );
    await Future.delayed(Duration(milliseconds: 1200));
    _speechToText.changePauseFor(Duration(milliseconds: 2250));

    setState(() {});
  }

  Future<void> _stopListening() async {
    await _speechToText.stop();
    setState(() {
      doingAns = false;
    });
  }

  void _onSpeechResult(result) async {
    setState(() {
      _wordsSpoken = result.recognizedWords;
    });
  }

  void _getAnswer({
    required bool doingDialog,
    required bool doing,
    required String createURL,
    required String statusURL,
    required String answerURL,
  }) async {
    int count = 0;
    doingDialog = true;
    while (doingDialog) {
      await _startListening();
      Future.delayed(Duration(milliseconds: 50));

      while (_speechToText.isListening) {
        await Future.delayed(Duration(milliseconds: 10));
      }
      dynamic postResult = await postTask(createURL, chatroomID, _wordsSpoken);
      setState(() {
        taskID = postResult;
        _wordsSpoken = "";
      });

      count = 0;
      doing = true;

      while (doing) {
        dynamic taskStatus = await getStatus(statusURL, taskID);
        int len = taskStatus['len'];

        if ((taskStatus['task_status'] != 'todo' && count < len)) {
          if (taskID == null) {
            print("taskID가 제대로 안 넘어옴");
          }
          final String uri = "$answerURL?task_id=$taskID&index=${count + 1}";
          final player = AudioPlayer();
          await player.play(UrlSource(uri));
          while (player.state == PlayerState.playing) {
            await Future.delayed(Duration(milliseconds: 10));
          }
          print(player.state);
          count++;
        }
        if (taskStatus['task_status'] == 'done' && (count == len)) {
          doing = false;
        }
        await Future.delayed(Duration(milliseconds: 250));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    const String createURL = "http://172.30.1.88:8000/api/user/task/create";
    const String statusURL = "http://172.30.1.88:8000/api/user/task/status";
    const String answerURL = "http://172.30.1.88:8000/api/user/task/answer";
    int minutes = _elapsedSeconds ~/ 60;
    int seconds = _elapsedSeconds % 60;
    String formattedTime =
        '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';

    return Scaffold(
      body: Container(
        width: 360.w,
        height: 800.h,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          color: Color(0xFFF6EEFE),
        ),
        child: Stack(
          children: [
            Positioned(
              left: -18.w,
              top: 210.h,
              child: Container(
                width: 400.w,
                height: 355.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/calling_main_image.gif"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: -5,
              child: Container(
                width: 360.w,
                height: 224.h,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [
                      Color(0xFFC1B5CC),
                      Color(0xFFB9AFC0),
                    ],
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            /// blur container
            ///
            Positioned(
              left: -7.w,
              top: 152.h,
              child: Container(
                width: 374.w,
                height: 133.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/blur_layer_2.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
                left: 0.w,
                top: 88.h,
                width: 360.w,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${widget.buttonText}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          shadows: [
                            Shadow(
                                blurRadius: 8.0,
                                color: Colors.black45,
                                offset: Offset(2, 2))
                          ],
                          color: Colors.white,
                          fontSize: 40,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '$formattedTime',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                )),

            Positioned(
              left: 42.w,
              top: 660.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(100, 210, 173, 216),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/icons/bluetooth.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 56,
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/icons/callend.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 56,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(100, 210, 173, 216),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/icons/speaker.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
