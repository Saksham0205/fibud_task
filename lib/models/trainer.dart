class Trainer {
  final String name;
  final String description;
  final String imagePath;

  Trainer({
    required this.name,
    required this.description,
    required this.imagePath,
  });

  // Sample data
  static List<Trainer> getSampleTrainers() {
    return [
      Trainer(
        name: 'Park Hee-won',
        description: 'Park Hee-won Trainer',
        imagePath: 'assets/images/trainer1.jpeg',
      ),
      Trainer(
        name: 'Yutae Son',
        description: 'A Guide to a Healthy Life',
        imagePath: 'assets/images/trainer2.jpeg',
      ),
      Trainer(
        name: 'Yubin Kang',
        description: 'We do our best for each and every one of our members.',
        imagePath: 'assets/images/trainer3.jpeg',
      ),
      Trainer(
        name: 'Lee Hyunho',
        description: 'We design a once-in-a-lifetime life',
        imagePath: 'assets/images/trainer4.jpeg',
      ),
    ];
  }
}
