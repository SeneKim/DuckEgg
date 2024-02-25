import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:hummingbird/controllers/getcall.dart';
import 'package:hummingbird/controllers/postcall.dart';

class CallingPage2 extends StatefulWidget {
  const CallingPage2({super.key});

  @override
  State<CallingPage2> createState() => _CallingPage2State();
}

class _CallingPage2State extends State<CallingPage2> {
  // STT Variables
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _wordsSpoken = "";

  // Commuication Variables
  final String chatroomID = "65cda35223f8190950c4a7d4";
  String? taskID;
  bool doingDia = true;
  bool doingAns = false;

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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("LEGEND DIALOG"),
      ),
      body: ElevatedButton(
        child: Text("종료"),
        onPressed: () {
          setState(() {
            doingDia = false;
          });
          _stopListening();
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            _getAnswer(
                doingDialog: doingDia,
                doing: doingAns,
                createURL: createURL,
                statusURL: statusURL,
                answerURL: answerURL);
          },
          backgroundColor: Colors.green,
          child: Icon(
            _speechToText.isListening ? Icons.mic : Icons.mic_none,
            color: Colors.white,
          )),
    );
  }
}
