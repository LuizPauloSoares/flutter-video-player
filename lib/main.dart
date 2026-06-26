import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      home: VideoPage(),
    );
  }
}

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});


  @override
  State<VideoPage> createState() => _VideoPage();
}

class _VideoPage extends State<VideoPage> {
  late VideoPlayerController _controller;

  @override
  void initState(){
    super.initState();

    _controller = VideoPlayerController.asset(
      'assets/videos/video_exemplo.mp4',
      );

    _controller.initialize().then((_){
     setState(() {
     });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void controlarVideo(){
    setState(() {
      if (_controller.value.isPlaying){
        _controller.pause();
      }else{
        _controller.play();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('video no flutter'),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ?Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: controlarVideo,
                child:Text(
                  _controller.value.isPlaying
                      ? 'pausar video'
                      : 'reproduzir video',
                ),
            ),
          ],
        )
            :const CircularProgressIndicator(),
      ),
    );
  }

}