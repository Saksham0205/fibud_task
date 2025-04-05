class QAItem {
  final String question;
  final String answer;

  QAItem({
    required this.question,
    required this.answer,
  });

  // Sample data
  static List<QAItem> getSampleQAItems() {
    return [
      QAItem(
        question:
            'Is there any upper body exercise that can be done even if your ankle hurts?',
        answer:
            'There are more exercises you can do without ankles than you think.',
      ),
      QAItem(
        question: 'Cheat Day',
        answer:
            'I don\'t think you need to reduce it, you can eat it the next day as you normally would!',
      ),
      QAItem(
        question: 'Hamstring tendinopathy',
        answer:
            'It is thought that training is necessary in a way that activates other muscles that are connected well to reduce overuse of the hamstrings',
      ),
    ];
  }
}
