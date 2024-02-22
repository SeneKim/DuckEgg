import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerPage extends StatefulWidget {
  @override
  _AudioPlayerPageState createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio Player"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            test(
                "http://192.168.10.58:8000/api/user/task/test/voice?voice_id=65d3fb0ab07d3a20cb14db47");
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
}
