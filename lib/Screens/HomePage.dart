import 'package:flutter/material.dart';
import 'package:language_app/Components/Category.dart';
import 'package:language_app/Screens/ColorsPage.dart';
import 'package:language_app/Screens/FamilyMembersPage.dart';
import 'package:language_app/Screens/NumbersPage.dart';
import 'package:language_app/Screens/PhrasesPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 235, 227),
      appBar: AppBar(
        title: const Text('Toku App'),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color: Colors.orange,
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembers();
              }));
            },
            text: 'Family Members',
            color: Color.fromARGB(255, 56, 138, 59),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
            text: 'Colors',
            color: Color.fromARGB(255, 139, 29, 161),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
            text: 'Phases',
            color: Color.fromARGB(255, 57, 209, 255),
          ),
        ],
      ),
    );
  }
}
