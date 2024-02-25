import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class VoicePage extends StatefulWidget {
  const VoicePage({super.key});

  @override
  State<VoicePage> createState() => _VoicePageState();
}

class _VoicePageState extends State<VoicePage> {
  @override
  Widget build(BuildContext context) {
    final AudioPlayer audioPlayer = AudioPlayer();
    final List<String> audioUrls = [
      'http://192.168.10.147:8000/api/user/task/answer?task_id=65d837c934e0bbe45ca3abb6&index=1',
      'http://192.168.10.147:8000/api/user/task/answer?task_id=65d837c934e0bbe45ca3abb6&index=2',
    ];

    Future<void> playSequentially() async {
      int currentIndex = 0;

      void playNextAudio() async {
        if (currentIndex >= audioUrls.length) {
          return;
        }
        await audioPlayer.play(UrlSource(audioUrls[currentIndex]));
        currentIndex++;
        if (audioPlayer.state == PlayerState.completed)
        audioPlayer.onPlayerComplete.listen((event) {
          playNextAudio();
        });
      }

      playNextAudio();
    }

    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              await playSequentially();
            },
            child: Text("button")),
      ),
    );
  }
}
