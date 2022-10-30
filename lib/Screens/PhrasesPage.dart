// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';
import 'package:language_app/Components/PhraseList.dart';
import 'package:language_app/Models/Item.dart';
import '../Components/ItemList.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Item> phrasesList = const [
    Item(
        sound: 'are_you_coming.wav',
        jpName: 'Kimasu ka',
        enName: 'are you coming'),
    Item(
        sound: 'dont_forget_to_subscribe.wav',
        jpName: 'Kōdoku suru no o wasurenaide kudasai',
        enName: 'dont forgot to subscribe'),
    Item(
        sound: 'how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'how are you feeling'),
    Item(
        sound: 'i_love_anime.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime'),
    Item(
        sound: 'i_love_programming.wav',
        jpName: 'Watashi wa puroguramingu ga daisukidesu',
        enName: 'i love programming'),
    Item(
        sound: 'programming_is_easy.wav',
        jpName: 'Puroguramingu wa kantandesu',
        enName: 'programming is easy'),
    Item(
        sound: 'what_is_your_name.wav',
        jpName: 'Namae wa nandesu ka',
        enName: 'what is your name'),
    Item(
        sound: 'where_are_you_going.wav',
        jpName: 'Doko ni iku no',
        enName: 'where are you going'),
    Item(
        sound: 'yes_im_coming.wav',
        jpName: 'Hai Imu kuru',
        enName: 'yes im coming'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text(
            'Colors',
            style: TextStyle(),
          ),
        ),
        body: ListView.builder(
          itemCount: phrasesList.length,
          itemBuilder: (context, index) {
            return PhraseItem(
              phrase: phrasesList[index],
              color: Color.fromARGB(255, 57, 209, 255),
              soundType: 'phrases',
            );
          },
        ));
  }
}
