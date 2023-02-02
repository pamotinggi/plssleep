import 'package:audioplayers/audioplayers.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Bluepage extends StatefulWidget {
  const Bluepage({Key? key}) : super(key: key);

  @override
  State<Bluepage> createState() => _BluepageState();
}

class _BluepageState extends State<Bluepage> {
  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return Scaffold(
      backgroundColor: Color(0xffe3f3f3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.5,
        title: Text("Calm Blue Sound"),
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
                    image: AssetImage("assets/calmblue.png"),
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Calm Blue",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: ()  {
                      player.pause();
                    },
                    icon: Icon(
                      EvaIcons.pauseCircle,
                      size: 30,
                      color: Colors.blue,
                    )),

                IconButton(
                    onPressed: () async {
                      await player.setSource(AssetSource('calmblue.mp3'));
                      player.resume();
                    },
                    icon: Icon(
                      EvaIcons.playCircle,
                      size: 30,
                      color: Colors.blue,
                    )),

                IconButton(
                    onPressed: () async {
                      await player.stop();
                    },
                    icon: Icon(
                      EvaIcons.stopCircle,
                      size: 30,
                      color: Colors.blue,
                    )),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Text(
                "Provided by:  HindZenD from PixaBay."
            ),
          ],
        ),
      ),
    );
  }
}
