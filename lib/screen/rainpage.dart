import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class RainPage extends StatefulWidget {
  const RainPage({Key? key}) : super(key: key);

  @override
  State<RainPage> createState() => _RainPageState();
}

class _RainPageState extends State<RainPage> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3f3f3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.5,
        title: Text("Rain Sound"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/rain.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Rain Sound",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () async {
                    await player.pause();
                  },
                  icon:
                      Icon(EvaIcons.pauseCircle, size: 30, color: Colors.blue),
                ),
                IconButton(
                  onPressed: () async {
                    await player.setSource(AssetSource('rainsound.mp3'));
                    player.resume();
                  },
                  icon: Icon(EvaIcons.playCircle, size: 30, color: Colors.blue),
                ),
                IconButton(
                  onPressed: () async {
                    await player.stop();
                  },
                  icon: Icon(EvaIcons.stopCircle, size: 30, color: Colors.blue),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Text(
                "Provided by: NaturesEye from PixaBay."
            ),
          ],
        ),
      ),
    );
  }
}
