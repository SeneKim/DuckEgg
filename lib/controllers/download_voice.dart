import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:audioplayers/audioplayers.dart';
import 'package:hummingbird/controllers/postcall.dart';

class AudioPlayerPage extends StatefulWidget {
  @override
  _AudioPlayerPageState createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  final String chatroomID = "65cda35223f8190950c4a7d4";
  String taskID = "65d824137c0db5d79c1f51d2";
  int count = 1;
  @override
  Widget build(BuildContext context) {
    const String createURL = "http://192.168.10.147:8000/api/user/task/create";
    const String statusURL = "http://192.168.10.147:8000/api/user/task/status";
    const String answerURL = "http://192.168.10.147:8000/api/user/task/answer";
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio Player"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            test("$answerURL?task_id=$taskID&index=$count");
          },
          child: Text("AK47 맞고 사망하신 외할머니! 말 그대로 AK! 소리 47번 외치셨지!"),
          style: ButtonStyle(),
        ),
      ),
    );
  }
}

Future<void> audioPlayers(String myurl, String voiceID) async {
  final uri = Uri.parse(myurl);
  final response = await http.get(
    uri.replace(queryParameters: {
      "voice_id": voiceID,
    }),
  );
  print("요청 시작: ${DateTime.now().toIso8601String()}");
  try {
    if (response.statusCode == 200) {
      print("요청 완료: ${DateTime.now().toIso8601String()}");
      final dynamic resultString = json.decode(response.body);
      print("String 받은 시각: ${DateTime.now().toIso8601String()}");
      final Uint8List uint8list = base64.decode(resultString);
      print("변환 완료: ${DateTime.now().toIso8601String()}");
      print(uint8list);
      final player = AudioPlayer();
      print("오디오 파일 생성 완료: ${DateTime.now().toIso8601String()}");
      await player.play(BytesSource(uint8list));
      print("오디오 플레이 완료: ${DateTime.now().toIso8601String()}");
    } else {
      throw Exception('Server Error: ${response.statusCode}');
    }
  } catch (e) {
    print('Failed to request: $e');
  }
}

Future<void> test(String myurl) async {
  final player = AudioPlayer();
  await player.play(UrlSource(myurl));
  for (int i = 0; i < 100; i++) {
    print(player.state);
    await Future.delayed(Duration(milliseconds: 100));
  }
}

void getVoice2(String myurl, String? taskID, int count) {
  // taskID가 null이면 함수 즉시 종료
  if (taskID == null) {
    print("taskID가 제대로 안 넘어옴");
  }
  final String uri = "$myurl?task_id=$taskID&index=$count";
  final player = AudioPlayer();
  player.play(UrlSource(uri));
}
