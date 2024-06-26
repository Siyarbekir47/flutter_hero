import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledBody extends StatelessWidget {
  const StyledBody(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.rosarivo(
        textStyle: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}

class StyledTitle extends StatelessWidget {
  const StyledTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: GoogleFonts.rosarivo(
        textStyle: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}

class StyledHeadline extends StatelessWidget {
  const StyledHeadline(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: GoogleFonts.rosarivo(
        textStyle: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
