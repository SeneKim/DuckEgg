import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:hummingbird/controllers/getcall.dart';

// POST API 호출 시 이거 복붙
Future<void> sendText(String chatroom_id, String query) async {
  final uri = Uri.parse('http://192.168.10.58:8000/api/user/task/create');
  final headers = {'Content-Type': 'application/json'};
  final body = json.encode({'chatroom_id': chatroom_id, 'query': query});

  try {
    final response = await http.post(uri, headers: headers, body: body);
    if (response.statusCode == 200) {
      final dynamic taskId = json.decode(response.body);
      print('Task ID: $taskId');
    } else {
      print('서버 오류: ${response.statusCode}');
    }
  } catch (e) {
    print('요청 실패: $e');
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
