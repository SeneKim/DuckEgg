import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _wordsSpoken = "";
  String chatroom_id = "65cad9a43844ae4d4f3d9e40";

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

  void _startListening() async {
    _speechToText.listen(
      onResult: _onSpeechResult,
      pauseFor: Duration(seconds: 4),
      localeId: 'ko-KR',
    );
    await Future.delayed(Duration(milliseconds: 2500));
    _speechToText.changePauseFor(Duration(milliseconds: 2250));
    setState(() {});
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  void _onSpeechResult(result) async {
    setState(() {
      _wordsSpoken = result.recognizedWords;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "LEGEND STT",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              _speechToText.isListening
                  ? "listening"
                  : _speechEnabled
                      ? "Press the btn"
                      : "Speech not available",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
              child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    _wordsSpoken,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                    ),
                  ))),
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: _startListening,
        tooltip: 'Listen',
        child: Icon(
          _speechToText.isListening ? Icons.mic : Icons.mic_off_rounded,
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
