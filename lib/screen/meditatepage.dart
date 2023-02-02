import 'package:audioplayers/audioplayers.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Mediatatepage extends StatefulWidget {
  const Mediatatepage({Key? key}) : super(key: key);

  @override
  State<Mediatatepage> createState() => _MediatatepageState();
}

class _MediatatepageState extends State<Mediatatepage> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3f3f3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.5,
        title: Text("Meditate Sound"),
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
                image: AssetImage("assets/meditate.png"),
                fit: BoxFit.fill,
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Meditate Sound",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () async {
                    await player.pause();
                  },
                  icon:
                  Icon(EvaIcons.pauseCircle, size: 70, color: Colors.blue),
                ),
                SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () async {
                    await player.setSource(AssetSource('meditate.mp3'));
                    player.resume();
                  },
                  icon: Icon(EvaIcons.playCircle, size: 70, color: Colors.blue),
                ),
                SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () async {
                    await player.stop();
                  },
                  icon: Icon(EvaIcons.stopCircle, size: 70, color: Colors.blue),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Text(
                "Provided by: YVHNII from PixaBay."
            ),
          ],
        ),
      ),
    );
  }
}
