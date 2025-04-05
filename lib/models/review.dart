class Review {
  final String user;
  final String reviewText;
  final String trainer;
  final String rating;

  Review({
    required this.user,
    required this.reviewText,
    required this.trainer,
    required this.rating,
  });

  // Sample data
  static List<Review> getSampleReviews() {
    return [
      Review(
        user: 'Jung** · 30-year-old female',
        reviewText:
            'I love that before starting a workout, you tell me how to stretch the muscles that will be used for the day\'s exercise. Thanks to this stretching, you can feel ❤️ that the muscles that will be used are loosened and the risk of injury decreases while exercising Above all, please tell us about each class in',
        trainer: 'Minji Trainer',
        rating: '5.0',
      ),
      Review(
        user: 'Kim** · 29-year-old female',
        reviewText:
            'Overall it was good, and the target area was stimulated well',
        trainer: 'Minji Trainer',
        rating: '4.0',
      ),
      Review(
        user: 'Mr. Jang · 29-year-old male',
        reviewText:
            'I am an office worker who has been building a wall with exercise for 5 years. I spent a lot of time sitting for a long time in office work, so my posture collapsed and I felt a lack of muscle strength. Working out with the coach, I am experiencing a definite change. He carefully corrects the movement and',
        trainer: 'Nanjingmun Trainer',
        rating: '5.0',
      ),
    ];
  }
}
