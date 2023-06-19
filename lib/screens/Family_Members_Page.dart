import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toku_app/components/list_item.dart';
import 'package:toku_app/models/Item_class.dart';

class FamilyMemberPage extends StatelessWidget {
  FamilyMemberPage({super.key});

  List<Item> familyMembersList = [
    Item(
        image: "assets/images/family_members/family_father.png",
        jpName: "Chichi",
        enName: "Father",
        sound: "father.wav"),
    Item(
        image: "assets/images/family_members/family_mother.png",
        jpName: "Haha",
        enName: "Mother",
        sound: "mother.wav"),
    Item(
        image: "assets/images/family_members/family_grandfather.png",
        jpName: "Ojiisan",
        enName: "Grand Father",
        sound: "grand father.wav"),
    Item(
        image: "assets/images/family_members/family_grandmother.png",
        jpName: "Sobo",
        enName: "Grand Mother",
        sound: "grand mother.wav"),
    Item(
        image: "assets/images/family_members/family_son.png",
        jpName: "Musuko",
        enName: "Son",
        sound: "son.wav"),
    Item(
        image: "assets/images/family_members/family_daughter.png",
        jpName: "Musume",
        enName: "Daughter",
        sound: "daughter.wav"),
    Item(
        image: "assets/images/family_members/family_older_brother.png",
        jpName: "Niisan",
        enName: "Older Brother",
        sound: "older bother.wav"),
    Item(
        image: "assets/images/family_members/family_older_sister.png",
        jpName: "Ane",
        enName: "Older Sister",
        sound: "older sister.wav"),
    Item(
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "Otouto ",
        enName: "Younger Brother",
        sound: "younger brohter.wav"),
    Item(
        image: "assets/images/family_members/family_younger_sister.png",
        jpName: "Imouto",
        enName: "Younger Sister",
        sound: "younger sister.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Members"),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: familyMembersList.length,
        itemBuilder: (context, index) {
          return listItem(
            number: familyMembersList[index],
            color: Color(0xff558B37),
            path: "assets/sounds/family_members/",
          );
        },
      ),
    );
  }
}
