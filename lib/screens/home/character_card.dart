import 'package:flutter/material.dart';
import 'package:flutter_hero/models/character.dart';
import 'package:flutter_hero/shared/styled_text.dart';
import 'package:flutter_hero/theme.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.character, {super.key});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Row(
          children: [
            Image.asset(
              'assets/img/vocations/${character.vocation.image}',
              width: 80,
            ),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledHeadline(character.name),
                StyledBody(character.vocation.title),
              ],
            ),
            const Expanded(
              child: SizedBox(),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
