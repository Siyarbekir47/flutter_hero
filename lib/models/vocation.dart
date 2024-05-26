enum Vocation {
  raider(
    title: "Terminal Raider",
    description:
        "A raider who is always on the move, looking for the next big score.",
    image: "termina_raider.jpg",
    weapon: "Terminal",
    ability: "Shellshock",
  ),
  junkie(
    title: "Tech Junkie",
    description:
        "A tech-savvy junkie who is addicted to the latest gadgets and technology.",
    image: "tech_junkie.jpg",
    weapon: "Gadgets",
    ability: "Tech Overload",
  ),
  ninja(
    title: "Stealth Ninja",
    description:
        "A master of stealth and agility, capable of infiltrating any location undetected.",
    image: "stealth_ninja.jpg",
    weapon: "Shuriken",
    ability: "Shadow Strike",
  ),
  wizard(
    title: "Mystic Wizard",
    description:
        "A powerful wizard who harnesses the forces of magic to cast devastating spells.",
    image: "mystic_wizard.jpg",
    weapon: "Staff",
    ability: "Arcane Blast",
  );

  const Vocation({
    required this.title,
    required this.description,
    required this.image,
    required this.weapon,
    required this.ability,
  });

  final String title;
  final String description;
  final String image;
  final String weapon;
  final String ability;
}
