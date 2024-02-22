import 'dart:convert';
import 'package:http/http.dart' as http;

// ask for POST method of fastAPI
// send chatrooID, STT data => receive taskID
Future<dynamic> postTask(String myurl, String chatroom_id, String query) async {
  final uri = Uri.parse(myurl);
  final headers = {'Content-Type': 'application/json'};
  final body = json.encode({'chatroom_id': chatroom_id, 'query': query});

  try {
    final response = await http.post(uri, headers: headers, body: body);
    if (response.statusCode == 200) {
      final dynamic taskId = json.decode(response.body);
      print('Task ID: $taskId');
      return taskId;
    } else {
      print('서버 오류: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    print('요청 실패: $e');
    return null;
  }
}

/* <.py file of fastAPI>
prefix = api/user/task/create
@router.post("/create")
async def createTask(task: dict):
    task_id = create_new_task(chatroom_id=task.chatroom_id, query=task.query, client=client)
    return task_id
*/