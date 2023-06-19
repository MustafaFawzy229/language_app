import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toku_app/components/list_item.dart';
import 'package:toku_app/models/Item_class.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});

  List<Item> phrasesList = [
    Item(
        jpName: "Kimasu ka?",
        enName: "Are you coming ?",
        sound: "are_you_coming.wav"),
    Item(
        jpName: "Kōdoku suru koto o wasurenaide kudasai",
        enName: "Don't forget to subscribe.",
        sound: "dont_forget_to_subscribe.wav"),
    Item(
        jpName: "Go kibun wa ikagadesu ka?",
        enName: "How are you feeling ?",
        sound: "how_are_you_feeling.wav"),
    Item(
        jpName: "Watashi wa anime ga daisukidesu",
        enName: "I love anime.",
        sound: "i_love_anime.wav"),
    Item(
        jpName: "Watashi wa puroguramingu ga daisukidesu.",
        enName: "I love programming.",
        sound: "i_love_programming.wav"),
    Item(
        jpName: "Puroguramingu wa kantandesu",
        enName: "Programming is easy.",
        sound: "programming_is_easy.wav"),
    Item(
        jpName: "Namae wa nandesu ka?",
        enName: "What is your name ?",
        sound: "what_is_your_name.wav"),
    Item(
        jpName: "Doko ni iku no ?",
        enName: "Where are you going ?",
        sound: "where_are_you_going.wav"),
    Item(
        jpName: "Hai, ikimasu",
        enName: "Yes, i'm coming.",
        sound: "yes_im_coming.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phrases"),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return phrasesItem(
            number: phrasesList[index],
            color: Color(0xff50ADC7),
            path: "assets/sounds/phrases/",
          );
        },
      ),
    );
  }
}
