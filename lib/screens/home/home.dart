import 'package:flutter/material.dart';
import 'package:flutter_hero/screens/home/character_card.dart';
import 'package:flutter_hero/shared/styled_button.dart';
import 'package:flutter_hero/shared/styled_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> characters = [
    'mario',
    'luigi',
    'peach',
    'toad',
    'yoshi',
    'bowser'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle("Hero lab"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: characters.length,
                itemBuilder: (context, index) {
                  return CharacterCard(characters[index]);
                },
              ),
            ),
            StyledButton(
              onPressed: () {},
              child: const StyledBody("Create New"),
            ),
          ],
        ),
      ),
    );
  }
}
