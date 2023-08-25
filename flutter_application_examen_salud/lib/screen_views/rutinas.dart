
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';

class rutinas extends StatefulWidget {

  
  const rutinas({super.key});

  @override
  State<rutinas> createState() => _rutinasState();
}

class _rutinasState extends State<rutinas> {
final YoutubePlayerController _controller1 = YoutubePlayerController(
  initialVideoId: 'https://www.youtube.com/shorts/YPsqMO9fQKs',
);
final YoutubePlayerController _controller2 = YoutubePlayerController(
  initialVideoId: 'https://www.youtube.com/shorts/YPsqMO9fQKs',
);
final YoutubePlayerController _controller3 = YoutubePlayerController(
  initialVideoId: 'https://www.youtube.com/shorts/YPsqMO9fQKs',
);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: const Text('Rutinas de ejercicio'),
  ),
  body: SingleChildScrollView(
    child: Column(
      children: [
        YoutubePlayer(
          controller: _controller1,
          showVideoProgressIndicator: true,
        ),
        const SizedBox(height: 20),
        const Text('Rutinas de ejercicio'),
        const SizedBox(height: 20),
        YoutubePlayer(
          controller: _controller2,
          showVideoProgressIndicator: true,
        ),
        const SizedBox(height: 20),
        const Text('Rutinas de ejercicio'),
        const SizedBox(height: 20),
        YoutubePlayer(
          controller: _controller3,
          showVideoProgressIndicator: true,
        ),
      ],
    ),
  ),
    );
  }
}