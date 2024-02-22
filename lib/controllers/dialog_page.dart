import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:hummingbird/controllers/getcall.dart';
import 'package:hummingbird/controllers/postcall.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key});

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  // STT Variables
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _wordsSpoken = "";

  // Commuication Variables
  String chatroomID = "65cad9a43844ae4d4f3d9e40";
  List<String> queriesList = ["", "", ""];
  String? taskID;
  List<String> answersList = ["", "", ""];
  bool doingDia = true;
  bool doingAns = true;
  int columnCount = 0;

  @override
  void initState() {
    // TODO: implement initState
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
      queriesList[columnCount] = _wordsSpoken;
      print("queriesList[columnCount]: ${queriesList[columnCount]}");
    });
  }

  void _getAnswer({
    required bool doingDialog,
    required bool doing,
    required String createURL,
    required String statusURL,
    required String answerURL,
  }) async {
    while (doingDialog) {
      await _startListening();
      print("1: ${DateTime.now().toIso8601String()}");
      Future.delayed(Duration(milliseconds: 50));
      while (_speechToText.isListening) {
        await Future.delayed(Duration(milliseconds: 10));
      }
      print("2: ${DateTime.now().toIso8601String()}");
      dynamic postResult = await postTask(createURL, chatroomID, _wordsSpoken);
      print("3: ${DateTime.now().toIso8601String()}");
      setState(() {
        taskID = postResult;
        _wordsSpoken = "";
      });
      int count = 0;
      doing = true;

      while (doing) {
        print("4: ${DateTime.now().toIso8601String()}");
        dynamic taskStatus = await getStatus(statusURL, taskID);
        int len = taskStatus['len'];

        if ((taskStatus['task_status'] != 'todo' && count < len)) {
          dynamic ans = await getAnswer(answerURL, taskID, count + 1);
          setState(() {
            answersList[columnCount] += ans;
          });
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
    String createURL = "http://192.168.10.58:8000/api/user/task/create";
    String statusURL = "http://192.168.10.58:8000/api/user/task/status";
    String answerURL = "http://192.168.10.58:8000/api/user/task/answer";
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
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: _stopListening,
            child: Text("뚝"),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("나: ${queriesList[0]}", textAlign: TextAlign.start),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("너: ${answersList[0]}", textAlign: TextAlign.end),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("나: ${queriesList[1]}", textAlign: TextAlign.start),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("너: ${answersList[1]}", textAlign: TextAlign.end),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("나: ${queriesList[2]}", textAlign: TextAlign.start),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("너: ${answersList[2]}", textAlign: TextAlign.end),
          ),
        ],
      ),
    );
  }
}

class DialogWidget extends StatefulWidget {
  bool doingDialog;

  DialogWidget({Key? key, required this.doingDialog}) : super(key: key);
  @override
  State<DialogWidget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  bool doing = true;
  int count = 0;
  String createURL = "http://192.168.10.58:8000/api/user/task/create";
  String statusURL = "http://192.168.10.58:8000/api/user/task/status";
  String answerURL = "http://192.168.10.58:8000/api/user/task/answer";

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}

Future<dynamic> getFullAnswer({
  required bool doing,
  required int count,
  required String createURL,
  required String statusURL,
  required String answerURL,
  String? taskID,
}) async {
  dynamic fullAns = "";

  while (doing) {
    dynamic taskStatus = await getStatus(statusURL, taskID);
    int len = taskStatus['len'];

    if ((taskStatus['task_status'] != 'todo' && count < len)) {
      dynamic ans = await getAnswer(answerURL, taskID, count + 1);
      print("getAns 요청!");
      fullAns += ans;
      print(fullAns);
      count++;
    }
    if (taskStatus['task_status'] == 'done' && (count == len)) {
      doing = false;
      print('Task is done!');
    }
    await Future.delayed(Duration(seconds: 1));
    print('count: $count');
  }
  return fullAns;
}
