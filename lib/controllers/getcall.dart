import 'dart:convert';
import 'package:audioplayers/audioplayers.dart';
import 'package:http/http.dart' as http;

// ask for POST method of fastAPI
// 1. request task status and length of list about LLM's response
// send taskID => receive task = {"task_status": "${task_status}: str", "len": "${len}: int"}
Future<dynamic> getStatus(String myurl, String? taskID) async {
  // taskID가 null이면 함수 즉시 종료
  if (taskID == null) {
    print("taskID가 제대로 안 넘어옴");
    return 0;
  }

  final uri = Uri.parse(myurl);
  final response = await http.get(
    uri.replace(queryParameters: {
      "task_id": taskID,
    }),
  );

  try {
    if (response.statusCode == 200) {
      final dynamic result = json.decode(response.body);
      String status = result["task_status"];
      int length = result["len"];
      print("status and len: $status, $length");
      return result;
    } else {
      throw Exception('Server Error: ${response.statusCode}');
    }
  } catch (e) {
    print('Failed to request: $e');
    return null;
  }
}

// 2. request answer
// send taskID, count of TTS sentences => receive answer: str
Future<dynamic> getAnswer(String myurl, String? taskID, int count) async {
  // taskID가 null이면 함수 즉시 종료
  if (taskID == null) {
    print("taskID가 제대로 안 넘어옴");
    return 0;
  }
  final uri = Uri.parse(myurl);
  final response = await http.get(
    uri.replace(queryParameters: {
      "task_id": taskID,
      "index": "$count",
    }),
  );
  try {
    if (response.statusCode == 200) {
      final String decodedBody = utf8.decode(response.bodyBytes);
      final dynamic result = json.decode(decodedBody);
      print("answer: $result");
      return result;
    } else {
      throw Exception('Server Error: ${response.statusCode}');
    }
  } catch (e) {
    print('Failed to request: $e');
    return null;
  }
}

Future<void> getVoice(String myurl, String? taskID, int count) async {
  // taskID가 null이면 함수 즉시 종료
  if (taskID == null) {
    print("taskID가 제대로 안 넘어옴");
  }
  final uri = "$myurl?$taskID=$count";
  final player = AudioPlayer();
  await player.play(UrlSource(uri));
}
