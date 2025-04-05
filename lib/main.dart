import 'package:flutter/material.dart';

void main() => runApp(FibudApp());

class FibudApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fibud',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Pretendard',
        primaryColor: const Color(0xFF6E00FF),
        scaffoldBackgroundColor: const Color(0xFF121212),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 600;

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: Text('Fibud',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF121212),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: TextButton(
              onPressed: () {},
              child: Text('login', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 64),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              // Main buttons
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF252525),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.fitness_center, color: Colors.white),
                          SizedBox(width: 8),
                          Text(
                            'Exercise Guide',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF252525),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Ask an Expert',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.edit, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              // Find experts near you
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF252525),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Find experts near you',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.location_on, color: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 16),
              // Purple banner
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 32),
                decoration: BoxDecoration(
                  color: const Color(0xFF6E00FF),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      '무엇이든 물어보세요',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '온라인 코칭 서비스 오픈',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              // Exercise Specialist section
              Text(
                'Exercise Specialist',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              // Filter chips
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildFilterChip('Physical Education Major', true),
                    SizedBox(width: 8),
                    _buildFilterChip('Master\'s degree or higher', false),
                    SizedBox(width: 8),
                    _buildFilterChip('More than 10 years of experience', false),
                    SizedBox(width: 8),
                    _buildFilterChip('Health Exercise Manager', false),
                    SizedBox(width: 8),
                    _buildFilterChip('Physiotherapist', false),
                  ],
                ),
              ),
              SizedBox(height: 16),
              // Trainers grid
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: isMobile ? 2 : 4,
                childAspectRatio: 0.8,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildTrainerCard(
                    'Park Hee-won',
                    'Park Hee-won Trainer',
                    'assets/images/trainer1.jpeg',
                  ),
                  _buildTrainerCard(
                    'Yutae Son',
                    'A Guide to a Healthy Life',
                    'assets/images/trainer2.jpeg',
                  ),
                  _buildTrainerCard(
                    'Yubin Kang',
                    'We do our best for each and every one of our members.',
                    'assets/images/trainer3.jpeg',
                  ),
                  _buildTrainerCard(
                    'Lee Hyunho',
                    'We design a once-in-a-lifetime life',
                    'assets/images/trainer4.jpeg',
                  ),
                ],
              ),
              SizedBox(height: 32),
              // Latest Workout Questions
              _buildSectionHeader('Latest Workout Questions'),
              // Q&A items
              _buildQAItem(
                'Is there any upper body exercise that can be done even if your ankle hurts?',
                'There are more exercises you can do without ankles than you think.',
              ),
              SizedBox(height: 16),
              _buildQAItem(
                'Cheat Day',
                'I don\'t think you need to reduce it, you can eat it the next day as you normally would!',
              ),
              SizedBox(height: 16),
              _buildQAItem(
                'Hamstring tendinopathy',
                'It is thought that training is necessary in a way that activates other muscles that are connected well to reduce overuse of the hamstrings',
              ),
              SizedBox(height: 32),
              // Popular Workout Guide
              _buildSectionHeader('Popular Workout Guide'),
              SizedBox(height: 16),
              // Workout guides
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: isMobile ? 1 : 3,
                childAspectRatio: isMobile ? 2.5 : 1.2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildWorkoutGuide(
                    'A new look at shoulder packing',
                    'Stereotypes in Weight Training: Shoulder Packing The term "shoulder packing" in weight training is prob...',
                    '8',
                    '9',
                  ),
                  _buildWorkoutGuide(
                    'If you buy running shoes without knowing...',
                    'Running is popular these days, isn\'t it? I don\'t know if running shoes are bought for the comfort of the fee...',
                    '20',
                    '7',
                  ),
                  _buildWorkoutGuide(
                    'Correct squat posture – don\'t do it',
                    'As I said before, bodybuilding is the surest way to build your body. But! Wrong exercise met...',
                    '',
                    '',
                  ),
                ],
              ),
              SizedBox(height: 32),
              // Expert Real Review
              _buildSectionHeader('Expert Real Review'),
              SizedBox(height: 16),
              // Reviews
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: isMobile ? 1 : 3,
                childAspectRatio: isMobile ? 1.5 : 0.8,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildReviewCard(
                    'Jung** · 30-year-old female',
                    'I love that before starting a workout, you tell me how to stretch the muscles that will be used for the day\'s exercise. Thanks to this stretching, you can feel ❤️ that the muscles that will be used are loosened and the risk of injury decreases while exercising Above all, please tell us about each class in',
                    'Minji Trainer',
                    '5.0',
                  ),
                  _buildReviewCard(
                    'Kim** · 29-year-old female',
                    'Overall it was good, and the target area was stimulated well',
                    'Minji Trainer',
                    '4.0',
                  ),
                  _buildReviewCard(
                    'Mr. Jang · 29-year-old male',
                    'I am an office worker who has been building a wall with exercise for 5 years. I spent a lot of time sitting for a long time in office work, so my posture collapsed and I felt a lack of muscle strength. Working out with the coach, I am experiencing a definite change. He carefully corrects the movement and',
                    'Nanjingmun Trainer',
                    '5.0',
                  ),
                ],
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'groove',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'expert',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Exercise Talk',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Pivot',
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label, bool isSelected) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF6E00FF) : const Color(0xFF252525),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildTrainerCard(String name, String description, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF252525),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Text('More', style: TextStyle(color: Colors.white70)),
              Icon(Icons.chevron_right, color: Colors.white70, size: 16),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildQAItem(String question, String answer) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF252525),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Q. ',
                style: TextStyle(
                  color: const Color(0xFF6E00FF),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Text(
                  question,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'A. ',
                style: TextStyle(
                  color: const Color(0xFF6E00FF),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Text(
                  answer,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWorkoutGuide(
      String title, String description, String comments, String likes) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF252525),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize:
        MainAxisSize.min, // Ensure column takes minimum space needed
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 8),
          Container(
            height: 50, // Fixed height for description
            child: Text(
              description,
              style: TextStyle(color: Colors.white70, fontSize: 12),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 8), // Fixed spacing instead of Spacer
          if (comments.isNotEmpty && likes.isNotEmpty)
            Row(
              children: [
                Icon(Icons.chat_bubble_outline,
                    color: Colors.white70, size: 16),
                SizedBox(width: 4),
                Text(comments,
                    style: TextStyle(color: Colors.white70, fontSize: 12)),
                SizedBox(width: 12),
                Icon(Icons.thumb_up_outlined, color: Colors.white70, size: 16),
                SizedBox(width: 4),
                Text(likes,
                    style: TextStyle(color: Colors.white70, fontSize: 12)),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildReviewCard(
      String user, String reviewText, String trainer, String rating) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF252525),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize:
        MainAxisSize.min, // Ensure column takes minimum space needed
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User and rating in a more compact layout
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  user,
                  style: TextStyle(
                    color: const Color(0xFF6E00FF),
                    fontWeight: FontWeight.bold,
                    fontSize: 12, // Smaller font size
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star,
                      color: Colors.yellow, size: 14), // Smaller icon
                  SizedBox(width: 2),
                  Text(
                    rating,
                    style: TextStyle(
                        color: Colors.white, fontSize: 12), // Smaller font
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 6), // Reduced spacing further
          Flexible(
            child: Text(
              reviewText,
              style: TextStyle(
                  color: Colors.white70, fontSize: 12), // Smaller font
              overflow: TextOverflow.ellipsis,
              maxLines: 3, // Reduced max lines
            ),
          ),
          SizedBox(height: 6), // Reduced spacing further
          Text(
            trainer,
            style: TextStyle(color: Colors.white, fontSize: 12), // Smaller font
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
