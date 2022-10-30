import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Models/Item.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({
    Key? key,
    required this.phrase,
    required this.color,
    required this.soundType,
  }) : super(key: key);
  final Item phrase;
  final Color color;
  final String soundType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0.5),
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color.fromARGB(255, 251, 235, 227),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  phrase.enName,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {
                  try {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/$soundType/');
                    player.play(phrase.sound);
                  } catch (ex) {
                    print('ex');
                  }
                },
                icon: const Icon(
                  Icons.play_arrow,
                  size: 30,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
