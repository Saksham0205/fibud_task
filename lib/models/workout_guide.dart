class WorkoutGuide {
  final String title;
  final String description;
  final String comments;
  final String likes;

  WorkoutGuide({
    required this.title,
    required this.description,
    this.comments = '',
    this.likes = '',
  });

  // Sample data
  static List<WorkoutGuide> getSampleWorkoutGuides() {
    return [
      WorkoutGuide(
        title: 'A new look at shoulder packing',
        description:
            'Stereotypes in Weight Training: Shoulder Packing The term "shoulder packing" in weight training is prob...',
        comments: '8',
        likes: '9',
      ),
      WorkoutGuide(
        title: 'If you buy running shoes without knowing...',
        description:
            'Running is popular these days, isn\'t it? I don\'t know if running shoes are bought for the comfort of the fee...',
        comments: '20',
        likes: '7',
      ),
      WorkoutGuide(
        title: 'Correct squat posture – don\'t do it',
        description:
            'As I said before, bodybuilding is the surest way to build your body. But! Wrong exercise met...',
        comments: '',
        likes: '',
      ),
    ];
  }
}
