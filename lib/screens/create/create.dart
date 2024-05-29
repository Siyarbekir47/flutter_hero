import 'package:flutter/material.dart';
import 'package:flutter_hero/models/vocation.dart';
import 'package:flutter_hero/screens/create/vocation_card.dart';
import 'package:flutter_hero/shared/styled_button.dart';
import 'package:flutter_hero/shared/styled_text.dart';
import 'package:flutter_hero/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_hero/models/character.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final _nameController = TextEditingController();
  final _sloganController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _sloganController.dispose();
    super.dispose();
  }

  //handling vocation selection

  Vocation selectedVocation = Vocation.junkie;

  void updateVocation(Vocation vocation) {
    setState(
      () {
        selectedVocation = vocation;
      },
    );
  }

  //submit handler
  void handleSubmit() {
    if (_nameController.text.trim().isEmpty ||
        _sloganController.text.trim().isEmpty) {
      return;
    } else {
      setState(() {
        characters.add(
          Character(
            name: _nameController.text,
            slogan: _sloganController.text,
            vocation: selectedVocation,
            id: DateTime.now().toString(),
          ),
        );
      });
      Navigator.pop(context, characters);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const StyledTitle("Character Creation"),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //welcome msg
                const Center(
                  child: Icon(Icons.code, size: 75, color: AppColors.primary),
                ),
                const Center(
                  child: StyledHeadline("Welcome Summoner"),
                ),
                const Center(
                  child:
                      StyledBody("Create a name & Slogan for your Character."),
                ),
                const SizedBox(
                  height: 30,
                ),
                //input for name and slogan
                TextField(
                  controller: _nameController,
                  style: GoogleFonts.rosarivo(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    label: StyledBody("Name"),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: _sloganController,
                  style: GoogleFonts.rosarivo(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.format_quote),
                    label: StyledBody("Slogan"),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                //select vocation Title
                const Center(
                  child: Icon(Icons.code, size: 40, color: AppColors.primary),
                ),
                const Center(
                  child: StyledHeadline("Choose your Vocation"),
                ),
                const Center(
                  child: StyledBody("This determines your available Skills."),
                ),
                const SizedBox(
                  height: 30,
                ),

                //vocation cards

                VocationCard(
                  vocation: Vocation.junkie,
                  onTap: updateVocation,
                  selected: selectedVocation == Vocation.junkie,
                ),
                VocationCard(
                    vocation: Vocation.ninja,
                    onTap: updateVocation,
                    selected: selectedVocation == Vocation.ninja),
                VocationCard(
                    vocation: Vocation.raider,
                    onTap: updateVocation,
                    selected: selectedVocation == Vocation.raider),
                VocationCard(
                    vocation: Vocation.wizard,
                    onTap: updateVocation,
                    selected: selectedVocation == Vocation.wizard),
                //create button
                Center(
                  child: StyledButton(
                    onPressed: handleSubmit,
                    child: const StyledHeadline("Create Character"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
