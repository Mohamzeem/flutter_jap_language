import 'package:flutter/material.dart';
import 'package:language_app/Models/Item.dart';

import '../Components/ItemList.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<Item> colorsList = const [
    Item(
        sound: 'black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'black'),
    Item(
      sound: 'brown.wav',
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'brown',
    ),
    Item(
      sound: 'dusty yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori',
      enName: 'dusty yellow',
    ),
    Item(
      sound: 'gray.wav',
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'gray',
    ),
    Item(
      sound: 'green.wav',
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'green',
    ),
    Item(
      sound: 'red.wav',
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'red',
    ),
    Item(
      sound: 'white.wav',
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiroi',
      enName: 'white',
    ),
    Item(
      sound: 'yellow.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'yellow',
    ),
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
          itemCount: colorsList.length,
          itemBuilder: (context, index) {
            return ListItem(
              item: colorsList[index],
              color: Color.fromARGB(255, 139, 29, 161),
              soundType: 'colors',
            );
          },
        ));
  }
}
