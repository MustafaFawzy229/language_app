import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toku_app/components/list_item.dart';
import 'package:toku_app/models/Item_class.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});

  List<Item> familyMembersList = [
    Item(
        image: "assets/images/colors/color_black.png",
        jpName: "Burakku",
        enName: "Black",
        sound: "black.wav"),
    Item(
        image: "assets/images/colors/color_brown.png",
        jpName: "Chairo",
        enName: "Brown",
        sound: "brown.wav"),
    Item(
        image: "assets/images/colors/color_dusty_yellow.png",
        jpName: "Hokori ppoi kiiro",
        enName: "Dusty Yellow",
        sound: "dusty yellow.wav"),
    Item(
        image: "assets/images/colors/color_gray.png",
        jpName: "Gure",
        enName: "Gray",
        sound: "gray.wav"),
    Item(
        image: "assets/images/colors/color_green.png",
        jpName: "Midori",
        enName: "Green",
        sound: "green.wav"),
    Item(
        image: "assets/images/colors/color_red.png",
        jpName: "Aka",
        enName: "Red",
        sound: "red.wav"),
    Item(
        image: "assets/images/colors/yellow.png",
        jpName: "Kiiroi",
        enName: "Yellow",
        sound: "yellow.wav"),
    Item(
        image: "assets/images/colors/color_white.png",
        jpName: "Shiroi",
        enName: "White",
        sound: "white.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colors"),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: familyMembersList.length,
        itemBuilder: (context, index) {
          return listItem(
            number: familyMembersList[index],
            color: Color(0xff79359F),
            path: "assets/sounds/colors/",
          );
        },
      ),
    );
  }
}
