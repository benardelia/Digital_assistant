import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Cook extends StatefulWidget {
  const Cook({ Key? key }) : super(key: key);

  @override
  State<Cook> createState() => _CookState();
}

class _CookState extends State<Cook> {
late YoutubePlayerController controller;

@override
  void initState() {
    
    super.initState();

    const String? url = 'https://www.youtube.com/watch?v=RCxpqotKE2s';
    controller = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(url)!);
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(controller: controller),
      builder: (context, player) => Scaffold(
        appBar: AppBar(
          title: const Text('Learn to cook'),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.pink,
              Colors.purple,]
            , begin: Alignment.bottomRight, end: Alignment.topLeft)
            )
          ),
        ),
      
        body: Column(children: [
          
          player
          ],),
      ),
    );
  }
}