import 'package:audioplayers/audioplayers.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Darkambpage extends StatefulWidget {
  const Darkambpage({Key? key}) : super(key: key);

  @override
  State<Darkambpage> createState() => _DarkambpageState();
}

class _DarkambpageState extends State<Darkambpage> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3f3f3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.5,
        title: Text("Dark Ambient Sound"),
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
                image: AssetImage("assets/darkamb.png"),
                fit: BoxFit.fill,
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Dark Ambient",
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
                      size: 70,
                      color: Colors.blue,
                    )),
                SizedBox(width: 15,),
                IconButton(
                    onPressed: () async {
                      await player.setSource(AssetSource('darkamb.mp3'));
                      player.resume();
                    },
                    icon: Icon(
                      EvaIcons.playCircle,
                      size: 70,
                      color: Colors.blue,
                    )),
                SizedBox(width: 15,),
                IconButton(
                    onPressed: () async {
                      await player.stop();
                    },
                    icon: Icon(
                      EvaIcons.stopCircle,
                      size: 70,
                      color: Colors.blue,
                    )),
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
