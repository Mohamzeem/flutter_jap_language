import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:language_app/Components/ItemList.dart';
import 'package:language_app/Models/Item.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({Key? key}) : super(key: key);
  final List<Item> familyMemebersList = const [
    Item(
        sound: 'father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Otōsan',
        enName: 'father'),
    Item(
      sound: 'daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'daughter',
    ),
    Item(
      sound: 'grand father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojīsan',
      enName: 'grand father',
    ),
    Item(
      sound: 'mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'mother',
    ),
    Item(
      sound: 'grand mother.wav',
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'grand mother',
    ),
    Item(
      sound: 'older brother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nīsan',
      enName: 'older brother',
    ),
    Item(
      sound: 'younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'younger sister',
    ),
    Item(
      sound: 'younger brother.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'younger brother',
    ),
    Item(
      sound: 'older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Onēsan',
      enName: 'older sister',
    ),
    Item(
      sound: 'son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'son',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text(
            'Family Members',
            style: TextStyle(),
          ),
        ),
        body: ListView.builder(
          itemCount: familyMemebersList.length,
          itemBuilder: (context, index) {
            return ListItem(
              item: familyMemebersList[index],
              color: Color.fromARGB(255, 56, 138, 59),
              soundType: 'family_members',
            );
          },
        ));
  }
}
