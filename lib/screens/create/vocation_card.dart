import 'package:flutter/material.dart';
import 'package:flutter_hero/models/vocation.dart';
import 'package:flutter_hero/shared/styled_text.dart';
import 'package:flutter_hero/theme.dart';

class VocationCard extends StatelessWidget {
  const VocationCard(
      {super.key,
      required this.vocation,
      required this.onTap,
      required this.selected});

  final Vocation vocation;
  final bool selected;
  final void Function(Vocation) onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(vocation);
      },
      child: Card(
        color: selected ? AppColors.secondaryVariant : Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Image.asset(
                'assets/img/vocations/${vocation.image}',
                width: 80,
                colorBlendMode: BlendMode.color,
                color: !selected
                    ? Colors.black.withOpacity(0.8)
                    : Colors.transparent,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StyledHeadline(vocation.title),
                    StyledBody(vocation.description),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
