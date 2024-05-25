import 'package:flutter/material.dart';
import 'package:flutter_hero/shared/styled_text.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.character, {super.key});

  final String character;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Row(
          children: [
            StyledBody(character),
          ],
        ),
      ),
    );
  }
}
