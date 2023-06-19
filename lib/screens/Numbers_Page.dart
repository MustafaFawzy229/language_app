import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toku_app/components/list_item.dart';
import 'package:toku_app/models/Item_class.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

  List<Item> numbersList = [
    Item(
        image: "assets/images/numbers/number_one.png",
        jpName: "ichi",
        enName: "One",
        sound: "number_one_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_two.png",
        jpName: "Ni",
        enName: "Two",
        sound: "number_two_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_three.png",
        jpName: "San",
        enName: "Three",
        sound: "number_three_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_four.png",
        jpName: "Shi",
        enName: "Four",
        sound: "number_four_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_five.png",
        jpName: "Go",
        enName: "Five",
        sound: "number_five_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_six.png",
        jpName: "Roku",
        enName: "Six",
        sound: "number_six_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_seven.png",
        jpName: "Shichi",
        enName: "Seven",
        sound: "number_seven_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_eight.png",
        jpName: "Hachi",
        enName: "Eight",
        sound: "number_eight_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_nine.png",
        jpName: "Kyu ",
        enName: "Nine",
        sound: "number_nine_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_ten.png",
        jpName: "Juu",
        enName: "Ten",
        sound: "number_ten_sound.mp3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers"),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbersList.length,
        itemBuilder: (context, index) {
          return listItem(
            number: numbersList[index],
            color: Color(0xffEF9235),
            path: "assets/sounds/numbers/",
          );
        },
      ),
    );
  }

  // List<Widget> getItems(List<Number> numbersList) {
  //   List<Widget> listItems = [];
  //   for (int i = 0; i < numbersList.length; i++) {
  //     listItems.add(numberItem(number: numbersList[i]));
  //   }
  //   return listItems;
  // }
}
