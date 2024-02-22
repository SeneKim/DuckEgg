import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:hummingbird/controllers/getcall.dart';
import 'package:hummingbird/controllers/postcall.dart';
class CallingPage extends StatefulWidget {
  const CallingPage({super.key});

  @override
  State<CallingPage> createState() => _CallingPageState();
}

class _CallingPageState extends State<CallingPage> {
  // STT Variables
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _wordsSpoken = "";

  // Commuication Variables
  final String chatroomID = "65cad9a43844ae4d4f3d9e40";
  String? taskID;
  bool doingDia = true;
  bool doingAns = true;
  int columnCount = 0;

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
      pauseFor: Duration(milliseconds: 4250),
      localeId: 'ko-KR',
    );
    await Future.delayed(Duration(milliseconds: 2000));
    _speechToText.changePauseFor(Duration(milliseconds: 2250));
    setState(() {});
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {
      doingAns = false;
      doingDia = false;
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
          await getVoice(answerURL, taskID, count + 1);
          count++;
        }
        if (taskStatus['task_status'] == 'done' && (count == len)) {
          doing = false;
        }
        await Future.delayed(Duration(milliseconds: 250));
      }
      columnCount++;
    }
  }

  @override
  Widget build(BuildContext context) {
    const String createURL = "http://192.168.10.58:8000/api/user/task/create";
    const String statusURL = "http://192.168.10.58:8000/api/user/task/status";
    const String answerURL = "http://192.168.10.58:8000/api/user/task/answer";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("LEGEND DIALOG"),
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
