import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/Item_class.dart';

class listItem extends StatelessWidget {
  listItem(
      {super.key,
      required this.number,
      required this.color,
      required this.path});
  Item number;
  Color color;
  String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image.asset(number.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: IconButton(
                  onPressed: () {
                    AudioCache player = AudioCache(prefix: path);
                    player.play(number.sound);
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 25,
                  ))),
        ],
      ),
    );
  }
}

class phrasesItem extends StatelessWidget {
  phrasesItem(
      {super.key,
      required this.number,
      required this.color,
      required this.path});
  Item number;
  Color color;
  String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                )
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(
                right: 4,
              ),
              child: IconButton(
                  onPressed: () {
                    AudioCache player = AudioCache(prefix: path);
                    player.play(number.sound);
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 25,
                  ))),
        ],
      ),
    );
  }
}
